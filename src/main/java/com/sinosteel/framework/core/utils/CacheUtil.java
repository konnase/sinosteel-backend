package com.sinosteel.framework.core.utils;

import java.util.List;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.sinosteel.framework.core.cache.RedisService;
import com.sinosteel.framework.core.utils.SpringUtil;
import com.sinosteel.domain.Role;
import com.sinosteel.service.AuthService;
import com.sinosteel.domain.Function;
import com.sinosteel.domain.User;
import com.sinosteel.service.UserService;
import com.sinosteel.framework.utils.json.JsonUtil;

public class CacheUtil {
    private static RedisService redisService = SpringUtil.applicationContext.getBean(RedisService.class);
    private static AuthService authService = SpringUtil.applicationContext.getBean(AuthService.class);
    private static UserService userService = SpringUtil.applicationContext.getBean(UserService.class);

    public static JSONObject saveUserInfoCache(User user) {
        JSONObject userInfoJson = new JSONObject();

        userInfoJson.put("username", user.getUsername());
        userInfoJson.put("password", user.getPassword());

        //roles
        List<Role> roles = user.getRoles();
        JSONArray rolesJsonArray = new JSONArray();
        for (Role role : roles) {
            rolesJsonArray.add(role.getRoleString());
        }
        userInfoJson.put("roles", rolesJsonArray);

        //functions
        List<Function> functions = user.getFunctions();
        System.out.println(user.getUsername());
        JSONArray functionsJsonArray = new JSONArray();
        for (Function function : functions) {
            functionsJsonArray.add(function.getFunctionString());
        }
        userInfoJson.put("functions", functionsJsonArray);

        //authorizations
        String userId = user.getId();
        List<String> queryAuthorizedOrganizationIds = authService.getQueryAuthorizedOrganizationIds(userId);
        List<String> deleteAuthorizedOrganizationIds = authService.getDeleteAuthorizedOrganizationIds(userId);
        List<String> editAuthorizedOrganizationIds = authService.getEditAuthorizedOrganizationIds(userId);

        userInfoJson.put("queryAuthorizations", JsonUtil.toStringJsonArray(queryAuthorizedOrganizationIds));
        userInfoJson.put("deleteAuthorizations", JsonUtil.toStringJsonArray(deleteAuthorizedOrganizationIds));
        userInfoJson.put("editAuthorizations", JsonUtil.toStringJsonArray(editAuthorizedOrganizationIds));

        //organizationIds
        List<String> organizationIds = userService.getOrganizationIdsByUserId(userId);
        userInfoJson.put("organizationIds", JsonUtil.toStringJsonArray(organizationIds));

        String username = user.getUsername();
        redisService.set(CacheRule.userInfo(username), userInfoJson);

        return userInfoJson;
    }

    public static void evictUserInfoCache(String username) {
        redisService.delete(CacheRule.userInfo(username));
    }

    public static JSONObject getUserInfoJson(String username) {
        return (JSONObject) redisService.getJson(CacheRule.userInfo(username));  //admin_user_info
    }

    public static void evictAllUserInfoCaches() {
        List<String> userInfoKeys = redisService.keys("[a-zA-z0-9]*" + CacheRule._USER_INFO);

        for (String userInfoKey : userInfoKeys) {
            redisService.delete(userInfoKey);
        }
    }
}
