<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
		<meta charset="utf-8">
		<title>doei</title>
	</head> 
	<body>
		<c:url value="/movies" var="homeUrl" />
		<a href="${homeUrl}">Kliknite ovdje</a>
	</body>
</html>
