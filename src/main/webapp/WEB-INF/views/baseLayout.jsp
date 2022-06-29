<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!doctype html>
<html class="fixed">
   <!--sidebar-left-collapsed-->
   <head>
      <!-- Basic -->
      <meta charset="UTF-8">
      <title>Agriculture & Farmers’ Empowerment</title>
      <meta name="keywords" content="Agriculture & Farmers’ Empowerment Department, Government of Odisha" />
      <meta name="description" content="Agriculture & Farmers’ Empowerment">
      <meta name="author" content="Aashdit Technologies">
      <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    
      <link rel="shortcut icon" href="${contextPath}/resources/assets/images/logo.png">
      <link rel="stylesheet" href="${contextPath}/resources/assets/vendor/bootstrap/css/bootstrap.css" />
      <link rel="stylesheet" href="${contextPath}/resources/assets/vendor/font-awesome/css/font-awesome.css" />
      <link rel="stylesheet" href="${contextPath}/resources/assets/stylesheets/theme.css" />
      <link rel="stylesheet" href="${contextPath}/resources/assets/stylesheets/skins/default.css" />
      <link rel="stylesheet" href="${contextPath}/resources/assets/stylesheets/theme-custom.css">
      <link rel="stylesheet" href="${contextPath}/resources/assets/vendor/data_tables/datatables.min.css"/>
     
      <base href="/">
      <script type="text/javascript">
         $(function() 
         {
                var url = window.location.href;
           
                $(".nav-main a").each(function() 
                {
                       if (url == this.href)
                       {
                              $(this).parent().addClass("nav-active");
                              $(this).parent().parent().addClass("nav-expanded nav-active");
                              $(this).parent().parent().parent().addClass("nav-expanded nav-active");
                              $(this).parent().parent().parent().parent().addClass("nav-expanded nav-active");
                              $(this).parent().parent().parent().parent().parent().addClass("nav-expanded nav-active");
                              $(this).parent().parent().parent().parent().parent().parent().addClass("nav-expanded nav-active");
                              $(this).parent().parent().parent().parent().parent().parent().parent().addClass("nav-expanded nav-active");
                       }
                });
         });
      </script>
   </head>
   <body>
    <%--   <sec:authentication var="principal" property="principal" /> --%>
      <section class="body">
         <div class="inner-wrapper">
            <tiles:insertAttribute name="header" />
            <!-- start: sidebar -->
            <tiles:insertAttribute name="menu" />
            <!-- end: sidebar -->
            <section role="main" class="content-body">
               <c:import url="message.jsp"></c:import>
               <tiles:insertAttribute name="body" />
            </section>
         </div>
      </section>
      <tiles:insertAttribute name="footer" />
      <!-- Vendor -->
       <script src="${contextPath}/resources/assets/vendor/modernizr/modernizr.js"></script>
      <script src="${contextPath}/resources/assets/vendor/jquery/jquery.js"></script>
      <script src="${contextPath}/resources/assets/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
      <script src="${contextPath}/resources/assets/vendor/bootstrap/js/bootstrap.js"></script>
      <script src="${contextPath}/resources/assets/vendor/bootbox/bootbox.min.js"></script>
      <script src="${contextPath}/resources/assets/vendor/nanoscroller/nanoscroller.js"></script>
      <script src="${contextPath}/resources/assets/javascripts/theme.js"></script>
      <script src="${contextPath}/resources/assets/javascripts/theme.init.js"></script>
      <script src="${contextPath}/resources/assets/javascripts/theme.custom.js"></script>
      <!-- Data table  -->
      <script type="text/javascript" src="${contextPath}/resources/assets/vendor/data_tables/datatables.min.js"></script>
      <script type="text/javascript">
         $(document).ready(function() {
          $('.DataTable').DataTable();
         });
      </script>
   </body>
</html>