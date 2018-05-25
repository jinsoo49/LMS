<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>    
<%@ page import="bbs.model.bbsDTO" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
<link href="../css/main.css" rel="stylesheet" type="text/css">
<style type="text/css">
						
		*{
			font-family: 'Nanum Gothic', sans-serif;
		}
		
		table {
			border-collapse: collapse;
		}d
		
		table,th,td{
			border: 1px solid gray;
		}
		
		table {
			width : 80%;
			margin: 10px auto 50px auto;
			/* border: 1px soid gray; */
		
		}
		
		th{
			background-color: #cccccc;
		}
		
		tr:hover{
			background-color: #e7eae5;
		}
	
		td>a{
			display: block;
			color:gray;
			text-decoration: none;
		}
		
</style>
<script type="text/javascript" src="../js/jquery-1.12.4.js"></script>
<script type="text/javascript">

	$(document).ready(function(){
		$('.menu2').mouseover(function(){
			$('.bitbutton').css("background", "rgba(255, 255, 255, 0.28)");
			$('.bit').css("display","inline");
		});					
		$('.menu2').mouseout(function(){
			$('.bitbutton').css("background", "rgba(255, 255, 255, 0)");
			$('.bit').css("display","none");
		});	
		$('.menu3').mouseover(function(){
			$('.clabutton').css("background", "rgba(255, 255, 255, 0.28)");
			$('.cla').css("display","inline");
		});					
		$('.menu3').mouseout(function(){
			$('.clabutton').css("background", "rgba(255, 255, 255, 0)");
			$('.cla').css("display","none");
		});	
		$(".cla>div, .bit>div").mouseover(function(){
			$(this).css("background", "rgba(0, 0, 0, 0.28)");
		});
		$(".cla>div, .bit>div").mouseout(function(){
			$(this).css("background", "rgba(0, 0, 0, 0)");
		});
		
		$('.menu1').mouseover(function(){
			$('.mainbutton').css("background", "rgba(255, 255, 255, 0.28)");
		});					
		$('.menu1').mouseout(function(){
			$('.mainbutton').css("background", "rgba(255, 255, 255, 0)");
		});	
		$('.menu7').mouseover(function(){
			$('.membutton').css("background", "rgba(255, 255, 255, 0.28)");
		});					
		$('.menu7').mouseout(function(){
			$('.membutton').css("background", "rgba(255, 255, 255, 0)");
		});	
		$('.menu4').mouseover(function(){
			$('.advice').css("background", "rgba(255, 255, 255, 0.28)");
		});					
		$('.menu4').mouseout(function(){
			$('.advice').css("background", "rgba(255, 255, 255, 0)");
		});	
	});

</script>	
	</head>	
<%
	ArrayList<bbsDTO> list = (ArrayList<bbsDTO>)request.getAttribute("alist");
%>	
	<body>
		<div class="container">
			<div class="menuBar">
				<div class="logo">
					<img src="../img/logo.JPG"/>
				</div>
				<div class="menu0" id="menu">
					<!-- 빈공간 -->
				</div>
				<div class="menu1" id="menu">
					<!-- 메인화면버튼 -->
					<div class="mainbutton">
						<a href="../main/Main.jsp">메인화면</a>
					</div>
				</div>
				<div class="menu2" id="menu">
					<!-- 소개 -->
					<div class="bitbutton">
						<a href="../guro/Intro.jsp">비트캠프구로지점</a>					
					</div>
					<div class="bit">
						<div class="bitintro">
							<a href="../guro/Intro.jsp">비트캠프 소개</a>						
						</div>
						<div class="bitcla">
							<a href="../guro/CompanyChart.jsp">조직도</a>
						</div>
						<div class="bittea">
							<a href="../guro/Profile.jsp">강사진 소개</a>
						</div>
						<div class="bitnavi">
							<a href="../guro/Directions.jsp">오시는길</a>
						</div>
					</div>
				</div>				
				<div class="menu3" id="menu">
					<!-- 강의 -->
					<div class="clabutton">
						<a href="../class/Intro.jsp">강의 소개</a>					
					</div>
					<div class="cla">
						<div class="clajava">
							<a href="../class/Java.jsp">JAVA 과정</a>
						</div>
						<div class="clac">
							<a href="../class/Clanguage.jsp">C언어 과정</a>
						</div>
						<div class="clabig">
							<a href="../class/Bigdata.jsp">빅데이터 과정</a>
						</div>
						<div class="claand">
							<a href="../class/Android.jsp">안드로이드 과정</a>
						</div>
					</div>
				</div>
				<div class="menu4" id="menu">
					<!-- 상담 -->
					<div class="advice">
						<a href="../main/Main.jsp">상담</a>
					</div>
				</div>
				<div class="menu5" id="menu">
					<!-- 빈공간 -->
				</div>
				<div class="menu6" id="menu">
					<!-- 빈공간 -->
				</div>
				<div class="menu7" id="menu">
					<!-- 회원페이지 -->
					<div class="membutton">
						<a href="#">회원 페이지</a>
					</div>
				</div>
				<div class="menu8" id="menu">
					<!-- 빈공간 -->
				</div>		
			</div>
			<div class="page">
				<div class="top">
					<!-- 상단 로그인 -->
					<div class="login">
						아이디
						<input type="text" class="id"/>
						비밀번호
						<input type="text" class="pw"/>
						<button class="memberLogin">로그인</button>
					</div>
				</div>
				<div class="main" style="overflow: auto">
					<!-- main list -->
					<h2>공지게시판 리스트 페이지</h2>
						<table>
							<tr>
								<th>글번호</th>
								<th>분류</th>
								<th>글제목</th>
								<th>글내용</th>
								<th>글쓴이</th>
								<th>날짜</th>
								<th>조회수</th>
								<th>수정일시</th>
							</tr>
							<%
								for(int i=0; i<list.size(); i++){
									bbsDTO bean=list.get(i);
							%>							
							<tr align="center">
								<td><%=bean.getBbsNo() %></td>
								<td><%=bean.getBbsCate() %></td>
								<td><%=bean.getBbsName() %></td>
								<td><%=bean.getBbsCon() %></td>
								<td><%=bean.getBbsW() %></td>
								<td><%=bean.getBbsDate() %></td>
								<td><%=bean.getBbsView() %></td>
								<td><%=bean.getBbsUdD() %></td>
							</tr>
							<% }%>
						</table>					
				</div>					
				<div class="footer">
					<!-- footer -->
					<img src="../img/logo_foot.JPG"/>
					<p>비트캠프 구로지점 서울시 구로구 구로동 1234-1 2층 비트캠프 | 사업자 등록번호 : 123-45-6789<br>
					(주)비트컴퓨터 구로지점 대표이사 : 조현정 / 문의 : 02 - 2345 - 6789 / 팩스 : 02 - 1234 - 5678<br>
					통신판매업 신고번호 : 제 구로-00011호 / 개인정보보호관리책임자 : 홍길동<br>
					Copyright (c) 비트캠프 All rights reserved.</p>
				</div>
			</div>
		</div>
	</body>
</html>