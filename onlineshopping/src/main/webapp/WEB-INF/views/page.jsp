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

<title>Online Market - ${title}</title>

<script>
	window.menu = '${title}';
	window.contextRoot = '${contextRoot}'
	
</script>

<!-- Bootstrap core CSS -->

<link href="${css}/bootstrap.min.css" rel="stylesheet">

	<!-- dataTable jquery -->
<link href="${css}/jquery.dataTables.css" rel="stylesheet">

<link href="${css}/bootstrap-sketchy-theme.css" rel="stylesheet">
<link rel="stylesheet" href="${css}/style.css">
<link rel="stylesheet" href="${css}/src.css">
<link rel="stylesheet" href="${css}/acount.css">

<link href="${css}/myapp.css" rel="stylesheet">
</head>

<body>

	<div class="wrapper">

		<!-- Navigation -->
		<%@include file="./shared/navbar.jsp"%>

		<!-- Page Content -->
		<div class="content">

			<!-- Home content içerik yükleme -->
			<c:if test="${userClickAnasayfa == true}">
				<%@include file="home.jsp"%>
			</c:if>

			<!-- Tıklandığında Hakkinda bölümü yüklensin. -->
			<c:if test="${userClickAbout == true}">
				<%@include file="hakkinda.jsp"%>
			</c:if>

			<!-- Tıklandığında İletişim bölümü yüklensin. -->
			<c:if test="${userClickiletisim == true}">
				<%@include file="iletisim.jsp"%>
			</c:if>

			<!-- Tıklandığında Liste bölümü yüklensin. -->
			<c:if
				test="${userClickAllProducts == true or userClickCategoryProducts == true}">
				<%@include file="listProducts.jsp"%>
			</c:if>		
			
			<!-- Tıklandığında Ürün Detayları bölümüyüklensin. -->
			<c:if test="${userClickShowProduct == true}">
				<%@include file="singleProduct.jsp"%>
			</c:if>

		</div>

		<!-- Footer comes here -->
		<%@include file="./shared/footer.jsp"%>

		<!-- Bootstrap core JavaScript -->
		<script src="${js}/jquery.min.js"></script>
		
		<script src="${js}/bootstrap.min.js"></script>
		<script src="${js}/bootstrap.bundle.min.js"></script>
		
		<!-- DataTable -->
		<script src="${js}/jquery.dataTables.min.js"></script>	


		<!-- BENİMO -->
		<script src="${js}/myapp.js"></script>

	</div>
</body>

</html>
