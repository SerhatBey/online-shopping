<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css"></spring:url>
<spring:url var="js" value="/resources/js"></spring:url>
<spring:url var="img" value="/resources/images"></spring:url>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap core CSS -->

<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- dataTable jquery --> 
<link href="${css}/jquery.dataTables.css" rel="stylesheet">

<%-- <link href="${css}/bootstrap-sketchy-theme.css" rel="stylesheet"> --%>
<%-- <link rel="stylesheet" href="${css}/style.css"> --%>



<link href="${css}/myapp.css" rel="stylesheet">

<title>Online Market - ${title}</title>

</head>

<body>

	<div class="wrapper">
		
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="container">
				<div class="navbar-header">
				    <a class="navbar-brand" href="${contextRoot}/anasayfa">Anasayfa</a>
				</div>
			</div>
		</nav>


		<!-- Page Content -->
		<div class="content">
			<div class="container">
				
				<div class="row">
				
					<div class="col-xs-12">
					
						<div class="jumbotron">
						
						<h1>${errorTitle}</h1>
						<hr/>
						
						<blockquote style="word-wrap:break-word">
							
								${errorDescription}
						
						</blockquote>
						
						</div>
					
					</div>
					
				</div>
			
			</div>

		
			</div>
			
			<!-- Footer comes here -->
		<%@include file="./shared/footer.jsp"%>
		
		
		

	</div>
</body>

</html>
