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
		$(document).ready(function(){
			
			$(".btnDel").each(function(idx, el){
				
				$(this).click(function(){
					
					var cd_nm = $(this).attr("cd_nm");
					var cd_id = $(this).attr("cd_id");
					
					if(confirm("공통코드 [ "+cd_nm+" ] 을(를) 삭제하겠습니까 ?")){
						$("#del_cd_id").val(cd_id);
						$("#frmDelete").submit();
					} 
					
				});
				
			});
			
			//키보드 입력 처리 막음 ( 엔터키만 )
			/* $("#grp_id,#cd_nm").keypress(function(event){
				if ( event.which == 13 ) {
				     event.preventDefault();
				  }
			}); */
			
			
			$("#test").click(function(){
				var url = "http://openapi.naver.com/search?key=c1b406b32dbbbbeee5f2a36ddc14067f&query=제주도&target=image&start=1&display=10";
				
				$.ajax({
		          url: url
		        }).done(function(data){
		            alert(data);
		        });
			});
			
		});
	</script>
</head>

<body>

	<form:form commandName="search" >
		<form:label path="grp_id" >그룹코드</form:label> 
		<form:input path="grp_id" />
		<form:label path="cd_nm">코드명</form:label> 
		<form:input path="cd_nm" />
		<form:button>검색</form:button>
		<a href="./register">등록</a>
	</form:form>	
	
	<button id="test">TEST</button>
	
	<table>
		<tr><th>그룹코드</th><th>그룹명</th><th>코드</th><th>코드명</th><th>삭제</th></tr>

		<c:forEach var="item" items="${list }" varStatus="s">
		
		<td>${item.grp_id }</td><td>${item.grp_nm }</td><td>${item.cd_id }</td><td>${item.cd_nm }</td><td class="btnDel" cd_id="${item.cd_id }" cd_nm="${item.cd_nm }">삭제</td></tr>
		
		</c:forEach>
			
	</table>
	
	<form action="/common/code/delete" id="frmDelete" method="post">
		<input type="hidden" id="del_cd_id" name="cd_id">
	</form>

</body>

</html>
