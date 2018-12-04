package com.sinosteel.framework.core.auth;

import com.sinosteel.framework.core.utils.CacheUtil;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.sinosteel.domain.User;
import com.sinosteel.repository.UserRepository;
import com.sinosteel.framework.utils.encryption.HmacSHA256Util;

import java.util.logging.Logger;

public class StatelessAuthorizingRealm extends AuthorizingRealm {
    private static Logger logger = Logger.getLogger(StatelessAuthorizingRealm.class.getName());

    @Autowired
    private UserRepository userRepository;

    @Override
    public boolean supports(AuthenticationToken token) {
        return token instanceof StatelessAuthenticationToken;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        StatelessAuthenticationToken statelessToken = (StatelessAuthenticationToken) token;
        String username = (String) statelessToken.getPrincipal();
        logger.info("login authentication...");
        JSONObject userInfoJson = CacheUtil.getUserInfoJson(username);
        if (userInfoJson == null) {
            User user = userRepository.findByUsername(username);
            if (user == null) {
                return null;
            }

            userInfoJson = CacheUtil.saveUserInfoCache(user);
        }

        String serverDigest = HmacSHA256Util.digest(getKey(username), userInfoJson.getString("password"));

        SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(username, serverDigest, getName());
        return authenticationInfo;
    }

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        String username = (String) principals.getPrimaryPrincipal();
        SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();

        JSONObject userInfoJson = CacheUtil.getUserInfoJson(username);
        logger.info("authorization: %s" + username);
        if (userInfoJson == null) {
            User user = userRepository.findByUsername(username);
            if (user == null) {
                return null;
            }

            userInfoJson = CacheUtil.saveUserInfoCache(user);
        }

        JSONArray rolesJsonArray = userInfoJson.getJSONArray("roles");
        for (int i = 0; i < rolesJsonArray.size(); i++) {
            String roleString = rolesJsonArray.getString(i);
            System.out.println(roleString + '\n');

            authorizationInfo.addRole(roleString);
        }

        JSONArray functionsJsonArray = userInfoJson.getJSONArray("functions");
        for (int i = 0; i < functionsJsonArray.size(); i++) {
            String functionString = functionsJsonArray.getString(i);
            System.out.println(functionString + '\n');
            authorizationInfo.addStringPermission(functionString);
        }

        return authorizationInfo;
    }

    //Key的生成策略
    private String getKey(String username) {
        return username;
    }
}
