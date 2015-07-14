<%@page import="kr.co.jwsnt.works.common.vo.JwCodeVo"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>

<head>
	<style type="text/css">
	</style>
	<script type="text/javascript" src="/resources/jquery-1.11.3.min.js"></script>
	<script type="	text/javascript">
		$(document).ready(function(){
			
		});
	</script>
</head>

<body>

	<form:form commandName="search" >
		<form:label path="nm" >이름</form:label> 
		<form:input path="nm" />
		<form:label path="rnk">등급</form:label> 
		<form:input path="rnk" />
		<form:label path="lang">언어</form:label> 
		<form:input path="lang" />
		<form:label path="ref">비고</form:label> 
		<form:input path="ref" />
		<form:button>검색</form:button>
	</form:form>
	
	<table>
		<tr><th>이름</th><th>전화번호</th><th>등급</th><th>경력</th><th>언어</th><th>연락</th><th>스케쥴</th><th>비고</th><th>이력서</th></tr>

		<c:forEach var="item" items="${list }">
		<tr><td>${item.nm }</td><td>${item.tel }</td><td>${item.rnk }</td><td>${item.carr }</td><td>${item.lang }</td><td>${item.cont }</td><td>${item.sche }</td><td>${item.ref }</td><td>${item.lnk }</td></tr>
		</c:forEach>
			
	</table>
	
</body>

</html>
