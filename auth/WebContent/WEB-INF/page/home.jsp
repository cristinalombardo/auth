<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core_rt' %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Authetication - Mechanism</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Le styles -->
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
    </style>
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

     <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/bootstrap/img/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath}/bootstrap/img/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath}/bootstrap/img/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath}/bootstrap/img/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/bootstrap/img/apple-touch-icon-57-precomposed.png">
  </head>

  <body>

    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="#">Authentication</a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li class="active"><a href="${pageContext.request.contextPath}/home.html">Home</a></li>
              <li><a href="${pageContext.request.contextPath}/sec/sec.html">Sec</a></li>
              <li><a href="${pageContext.request.contextPath}/sec/admin/admin.html">Admin</a></li>
            </ul>
            <sec:authorize ifAnyGranted="ROLE_USER,ROLE_ADMIN">
                <form class="navbar-form pull-right" name='oidf' action='${pageContext.request.contextPath}/j_spring_security_logout' method='GET'>
                    <button type="submit" class="btn">Esci</button>
                </form>
            </sec:authorize>
            
          </div><!--/.nav-collapse -->
          
        </div>
        
      </div>
       
    </div>
   

    <div class="container">

      <!-- Main hero unit for a primary marketing message or call to action -->
      <div class="hero-unit">
        <h1>Authentication Mechanism</h1>
        <p>Applicazione di test per differenti meccanismi di autenticazione. </p>
        
      </div>

      <hr>
      
     <footer class="footer">
      <div class="container">
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>Sviluppato da <b>Cristina Lombardo</b> <a href="mailto:lombardo.cristina84@gmail.com">lombardo.cristina84@gmail.com</a></p>
        <p>Facolt&agrave; di Ingegneria <em>Sicurezza nei sistemi informativi</em> a.a. 2012/2013.</p>
        <p>Docente:</p>
        <ul class="footer-links">
          <li>Prof.<b>Michele Malgeri</b> <a href="mailto:michele.malgeri@diit.unict.it">michele.malgeri@diit.unict.it</a></li>
        </ul>
      </div>
    </footer>
    </div> <!-- /container -->

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="${pageContext.request.contextPath}/bootstrap/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>

  </body>
</html>
