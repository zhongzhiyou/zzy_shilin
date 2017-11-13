<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="basePath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE HTML>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>权限管理系统</title>

    <link href="${basePath}/resources/zheng-admin/plugins/bootstrap-3.3.0/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${basePath}/resources/zheng-admin/plugins/material-design-iconic-font-2.2.0/css/material-design-iconic-font.min.css" rel="stylesheet"/>
    <link href="${basePath}/resources/zheng-admin/plugins/waves-0.7.5/waves.min.css" rel="stylesheet"/>
    <link href="${basePath}/resources/zheng-admin/plugins/waves-0.7.5/waves.min.css" rel="stylesheet"/>
    <link href="${basePath}/resources/zheng-admin/plugins/checkbix/css/checkbix.min.css" rel="stylesheet"/>
    <link href="${basePath}/resources/zheng-admin/css/login_zhly.css" rel="stylesheet"/>

</head>
<body>

<div id="stars">
    <div class="star" style="top: 0px;left: 500px;"></div>
    <div class="star1"></div>
</div>
<div id = "login">
    <div class="login-h">
        <!--logo-->
        <div class="login-h-l">
            <p class="login-h-l-l">
                <img src="/resources/zheng-admin/images/logo_zhly.png">
            </p>
        </div>
        <!--end logo-->
        <!--exit login -->
        <!--end exit login--->
    </div>
    <div class="login-c">
        <!--login layer-->
        <div class="login-c-m">
            <div class="login-c-m-h">
                <span class="line-l"></span>
                <p>登录</p>
                <span class="line-r"></span>
            </div>
            <div class="login-c-m-u">
                <input id="username" type="text" class="form-control" name="username" placeholder="帐号" required autofocus value="admin">
                <span class="userIcon"></span>
            </div>
            <div class="login-c-m-p">
                <input id="password" type="password" class="form-control" name="password" placeholder="密码" required value="123456">
                <span class="pwdIcon"></span>
            </div>
            <div class="clearfix">
            </div>
            <div class="checkbox">
                <input id="rememberMe" type="checkbox" class="checkbix" data-text="自动登录" name="rememberMe">
            </div>

            <div class="login-c-m-b">
                <input id ="login-bt" type="button" class="c-m-b-l" value="登录">
            </div>
        </div>
        <!-- end login layer-->

    </div>
    <div class="login-f">
        <p>Copyright © 2014-2016 www.citgroup.cn 中智游集团 版权所有 京ICP备15036610号-1</p>
        <p>北京市建国门内大街7号光华长安大厦2座8层</p>
    </div>
</div>
</body>
<script>
    // Read tutorial on my blog: http://www.cnblogs.com/wisewrong/p/7124920.html

    var stars = document.getElementById('stars')
    var star = document.getElementsByClassName('star')

    // js随机生成流星
    for (var j = 0; j < 10; j++) {
        var newStar = document.createElement("div")
        newStar.className = "star"
        newStar.style.top = randomDistance(30, -30) + 'px'
        newStar.style.left = randomDistance(150, 20) + 'px'
        stars.appendChild(newStar)
    }

    // 封装随机数方法
    function randomDistance(max, min) {
        var distance = Math.floor(Math.random() * (max - min + 1) * 10 + min)
        return distance
    }

    // 给流星添加动画延时
    for (var i = 0, len = star.length; i < len; i++) {
        if (i % 6 == 0) {
            star[i].style.animationDelay = '0s'
        } else {
            star[i].style.animationDelay = randomDistance(1,2) + 's'
        }
    }
</script>


<script src="${basePath}/resources/zheng-admin/plugins/jquery.1.12.4.min.js"></script>
<script src="${basePath}/resources/zheng-admin/plugins/bootstrap-3.3.0/js/bootstrap.min.js"></script>
<script src="${basePath}/resources/zheng-admin/plugins/waves-0.7.5/waves.min.js"></script>
<script src="${basePath}/resources/zheng-admin/plugins/checkbix/js/checkbix.min.js"></script>
<script>var BASE_PATH = '${basePath}';</script>
<script>var BACK_URL = '${param.backurl}';</script>
<script src="${basePath}/resources/zheng-admin/js/login.js"></script>
<script>
<c:if test="${param.forceLogout == 1}">
alert('您已被强制下线！');
top.location.href = '${basePath}/sso/login';
</c:if>
//解决iframe下系统超时无法跳出iframe框架的问题
if (window != top){
    top.location.href = location.href;
}
</script>
</body>
</html>
