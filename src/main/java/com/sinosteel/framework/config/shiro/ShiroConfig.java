package com.sinosteel.framework.config.shiro;

import java.util.LinkedHashMap;
import java.util.Map;

import org.apache.shiro.mgt.DefaultSessionStorageEvaluator;
import org.apache.shiro.mgt.DefaultSubjectDAO;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.session.mgt.DefaultSessionManager;
import org.apache.shiro.spring.security.interceptor.AuthorizationAttributeSourceAdvisor;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.apache.shiro.web.mgt.DefaultWebSubjectFactory;
import org.springframework.aop.framework.autoproxy.DefaultAdvisorAutoProxyCreator;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.sinosteel.framework.core.auth.StatelessAccessControlFilter;
import com.sinosteel.framework.core.auth.StatelessAuthorizingRealm;
import com.sinosteel.framework.core.auth.StatelessDefaultSubjectFactory;

@Configuration
public class ShiroConfig {
    /**
     * ShiroFilterFactoryBean 处理拦截资源文件问题。
     * 注意：单独一个ShiroFilterFactoryBean配置是或报错的，以为在
     * 初始化ShiroFilterFactoryBean的时候需要注入：SecurityManager
     * <p>
     * Filter Chain定义说明
     * 1、一个URL可以配置多个Filter，使用逗号分隔
     * 2、当设置多个过滤器时，全部验证通过，才视为通过
     * 3、部分过滤器可指定参数，如perms，roles
     */
    @Bean
    public ShiroFilterFactoryBean shiroFilter(SecurityManager securityManager) {
        ShiroFilterFactoryBean factoryBean = new ShiroFilterFactoryBean();
        factoryBean.setSecurityManager(securityManager);

        Map<String, String> filterChainDefinitionMap = new LinkedHashMap<String, String>();

        //<!-- authc:所有url都必须认证通过才可以访问; anon:所有url都都可以匿名访问-->
        filterChainDefinitionMap.put("/login", "anon");
        //filterChainDefinitionMap.put("/druid", "anon");
        filterChainDefinitionMap.put("/services/**", "statelessAuthc");
        factoryBean.setFilterChainDefinitionMap(filterChainDefinitionMap);

        factoryBean.getFilters().put("statelessAuthc", statelessAuthcFilter());

        return factoryBean;
    }

    @Bean
    public DefaultWebSecurityManager securityManager() {
        DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();

        securityManager.setSubjectFactory(subjectFactory());
        securityManager.setSessionManager(sessionManager());
        securityManager.setRealm(statelessRealm());

        /*
         * 禁用使用Sessions 作为存储策略的实现，但它没有完全地禁用Sessions
         * 所以需要配合context.setSessionCreationEnabled(false);
         */
        ((DefaultSessionStorageEvaluator) ((DefaultSubjectDAO) securityManager.getSubjectDAO()).getSessionStorageEvaluator()).setSessionStorageEnabled(false);

        return securityManager;
    }

    //生成subject
    @Bean
    public DefaultWebSubjectFactory subjectFactory() {
        StatelessDefaultSubjectFactory subjectFactory = new StatelessDefaultSubjectFactory();
        return subjectFactory;
    }

    /**
     * session管理器：
     * <p>
     * sessionManager通过sessionValidationSchedulerEnabled禁用掉会话调度器，
     * <p>
     * 因为我们禁用掉了会话，所以没必要再定期过期会话了。
     *
     * @return
     */
    @Bean
    public DefaultSessionManager sessionManager() {
        DefaultSessionManager sessionManager = new DefaultSessionManager();
        sessionManager.setSessionValidationSchedulerEnabled(false);
        return sessionManager;
    }

    @Bean
    public StatelessAuthorizingRealm statelessRealm() {
        return new StatelessAuthorizingRealm();
    }

    @Bean
    public StatelessAccessControlFilter statelessAuthcFilter() {
        return new StatelessAccessControlFilter();
    }

    //定义切面
    @Bean
    public AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor(SecurityManager securityManager) {
        AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor = new AuthorizationAttributeSourceAdvisor();
        authorizationAttributeSourceAdvisor.setSecurityManager(securityManager);
        return authorizationAttributeSourceAdvisor;
    }

    /**
     * Add.5.2
     * <p>
     * 自动代理所有的advisor:
     * <p>
     * 由Advisor决定对哪些类的方法进行AOP代理。
     */
    //自动将shiro中的切面应用到匹配的Bean中（即为目标Bean创建代理实例）
    @Bean
    public DefaultAdvisorAutoProxyCreator getDefaultAdvisorAutoProxyCreator() {
        DefaultAdvisorAutoProxyCreator daap = new DefaultAdvisorAutoProxyCreator();
        daap.setProxyTargetClass(true);
        return daap;
    }
}