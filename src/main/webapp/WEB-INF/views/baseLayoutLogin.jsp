<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<spring:htmlEscape defaultHtmlEscape="true" /> 
<!doctype html>
<html>
<head>
   <meta charset="UTF-8">
    <title>Agriculture & Farmers’ Empowerment</title>
    <meta name="keywords" content="Agriculture & Farmers’ Empowerment Department, Government of Odisha" />
    <meta name="description" content="Agriculture & Farmers’ Empowerment">
    <meta name="author" content="Aashdit Technologies">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <link rel="shortcut icon" href="${contextPath}/resources/assets/images/logo.png">
    <link rel="stylesheet" href="${contextPath}/resources/loginPage/css/login.css">
    <script src='https://www.google.com/recaptcha/api.js'></script>
</head>
<body>
    <section class="login_content">
        
        <div class="container">
          <div>
    <div class="bird-container bird-container--one">
      <div class="bird bird--one"></div>
    </div>
    <div class="bird-container bird-container--two">
      <div class="bird bird--two"></div>
    </div>
    <div class="bird-container bird-container--three">
      <div class="bird bird--three"></div>
    </div>
    <div class="bird-container bird-container--four">
      <div class="bird bird--four"></div>
    </div>
  </div>
            <div class="lc_left">
              <div class="lc_left_con">
                <div class="login_con">
                  <img src="${contextPath}/resources/loginPage/images/logo.png">
                </div>
                <h1>Agriculture & Farmers&#39; Empowerment Department</h1>
                <h2>Government of Odisha</h2>
                <!-- <div class="login_contact">
                  <p>For any query please contact</p>
                  <b>180012345678</b>
                  <a href="#">support@xyz.com</a>
                </div> -->
              </div>
            </div>
            <div class="lc_right">
                <div class="lc_right_con">
                    <h2>Login Panel</h2>
                    <div class="districtcon">
                        <form class="form-horizontal" id="login-window" action="${contextPath}/login" onsubmit="getAction()" method="POST">
                           <input type="hidden" name="${_csrf.parameterName}"
                              value="${_csrf.token}" />
                           <c:choose>
                              <c:when
                                 test="${not empty SPRING_SECURITY_LAST_EXCEPTION.message}">
                                 <p class="show-message incUserName">
                                    <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}" />
                                 </p>
                              </c:when>
                              <c:when test="${not empty error_msg}">
                                 <p class="show-message incUserName" id="logoutMessage">${error_msg}</p>
                              </c:when>
                              <c:when test="${not empty logoutmsg}">
                                 <p class="logout-message incUserName" id="logoutMessage">${logoutmsg}</p>
                              </c:when>
                              <c:when test="${not empty success_msg}">
                                 <p class="logout-message incUserName"
                                    id="change-password-message">${success_msg}</p>
                              </c:when>
                           </c:choose>
                          <div class="form-group" id="unm">
                              <label class="col-sm-12" for="email">Username:</label>
                              <div class="col-sm-12">
                                  <input placeholder="Username" class="form-control" name="username" id="username" type="text">
                              </div>
                          </div>
                          <div class="form-group" id="pas">
                              <label class="col-sm-12" for="pwd">Password:</label>
                              <div class="col-sm-12">
                                  <input placeholder="Password" class="form-control" name="password" id="password" type="password">
                              </div>
                          </div>
                           <div class="form-group" style="padding-left: 15px;">
                             <div class="g-recaptcha" style="transform:scale(0.91);-webkit-transform:scale(0.91);transform-origin:0 0;-webkit-transform-origin:0 0;" data-sitekey="6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI"></div><!-- test -->
                          </div>
                          <div class="form-group form-footer">
                                <label style="color:#fff"><input type="checkbox" > Remember me</label>
                                <label style="color:#fff;float: right;" id="forgrtPasswordWindow"> Reset Password</label>
                          </div>
                          <div class="text-center">
                         <button type="submit" class="btn btn-success cus-btn" id="btn_submit">Login</button>
                          </div>
                          
                      </form>               
                </div>
              </div>
               <div class="addrCon">
                        <h4>For any query please contact</h4>
                        <b>180012345678 </b>
                  <a href="#"> support@xyz.com</a>
                      </div>
            </div>
        </div>
    </section>
    <div class="copyright_con">
          
              <p style="background-color: #251e11d9;">
                  All Rights Reserved © 2019 <a href="index.html">Agriculture & Farmers’ Empowerment Department</a> &nbsp;||&nbsp; Powered by
                  <a href="#">Aashdit Technologies</a>
              </p>
        
    </div>
 <script src="${contextPath}/resources/loginPage/js/jquery-2.2.4.min.js"></script>
</body>
</html>