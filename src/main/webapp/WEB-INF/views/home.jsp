<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>메뉴</title>
</head>
<body>
<h1>
	
	공통 코드 기본 조회 : <a href="<c:url value="/resources/sample/angular-code-001.html" />">연결</a><br/>
	공통 코드 기본 조회 : <a href="<%=request.getContextPath() %>/resources/sample/angular-code-001.html">연결 </a>    
	
</h1>

</body>
</html>
