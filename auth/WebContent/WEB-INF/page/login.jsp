<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jstl/core_rt' %>
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
    <div class="container">
        <div class="page-header">
            <h1>Pagina di login <small>Possibilità di selezionare diverse modalit&agrave; di login</small></h1>
        </div>
        <c:if test="${not empty param.login_error}">
            <div class="row">
                <div class="span12">
                    <div class="alert alert-error">
                        <button type="button" class="close" data-dismiss="alert">×</button>
                        <strong>Errore</strong> Dati login errati
                    </div>
                </div>
            </div>
       </c:if>
        <div class="row alert alert-info">
	        <div class="span5">
		      <form class="form-signin" action='${pageContext.request.contextPath}/j_spring_security_check' method='POST'>
		        <h2 class="form-signin-heading ">Username password login</h2>
		        <input type="text" class="input-block-level" placeholder="Username" name='j_username' >
		        <input type="password" class="input-block-level" placeholder="Password" name='j_password'>
		        <button class="btn btn-primary" type="submit">Sign in</button>
		      </form>
	        </div>
        </div>
        <hr>
        <div class="row alert alert-success">
            <div class="span12 ">
                
                <form class="form-inline" action='${pageContext.request.contextPath}/j_spring_openid_security_check' method='POST'>
                    <h2 class="form-signin-heading">OpenID login</h2>
                    <input type='text' size='60' name='openid_identifier' class="input-xxlarge" placeholder="OpenID url"/>
                    <button class="btn btn-primary" name="submit" type="submit" value="Login">Sign in</button>
                </form>
            </div>
        </div>
        <hr>
        <div class="row alert alert-error">
            <div class="span4">
		       <form class="form-signin" action='${pageContext.request.contextPath}/j_spring_openid_security_check' method='POST'>
		          <h2 class="form-signin-heading">Google login</h2>
		          <input type="hidden" name='openid_identifier' value="https://www.google.com/accounts/o8/id"/>
		          <button class="btn btn-primary" name="submit" type="submit" value="Login">Sign in with google</button>
		       </form>
            </div>
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
