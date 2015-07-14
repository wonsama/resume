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
	<script type="text/javascript">
	
		//document ready 
		$(document).ready(function(){
			
			//button - init
			$("#btnInit").click(function(){
				
				$("#grp_id").val("-");
				$("#cd_nm").val("");
				
				//return false => not post message
				return false;
			});
		});
	
		
	</script>
</head>

<body>

	REGISTER<br><br>
	
	<form:form commandName="search">
		<form:label path="grp_id">그룹코드</form:label>
		<form:select path="grp_id">
			<form:option value="-" label="---선택---" />  
			<form:options items="${cmbGrp}" />  
		</form:select>
		<form:label path="cd_nm">코드명</form:label>
		<form:input path="cd_nm"/>
		<br><br>
		<form:button id="btnInit">초기화</form:button>
		<form:button>등록</form:button>
	</form:form>
	

</body>

</html>
