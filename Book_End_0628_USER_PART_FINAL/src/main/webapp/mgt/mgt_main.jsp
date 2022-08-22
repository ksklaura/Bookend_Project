<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mgt_main</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gochi+Hand&family=Jua&family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
<link rel="stylesheet" href="./css/mgt_main.css"></style>
<script src="./lib/jquery-3.6.0.min.js"></script>
<script defer src="./js/mgt_main.js"></script>
</head>
<body>
<%
	String inc=request.getParameter("inc");
	String display="";
	if(inc==null){
		inc="";
		display="";
	}else{
		display="style='display: none'";
	}
%>
	<div id="mgt_main">
		<header class="header">
			<div class="main_title">
				<a href="./mgt_main.jsp" ><img src="./icon/logo1.png"></a>
				<span class="title1">관리자 페이지</span>
			</div>
			<div class="log">
				<%@include file="./logInOut/login_out.jsp" %>
			</div>
			   <form>
      				<input type='text' name='uId' id='uId' value='${param.uId}'/>
   				</form>
		</header>
	
		<main class="main" >
			<div id="view">
			 <jsp:include page="<%=inc %>"/>
			</div>
			<div id="main_section">
				<form name="frm_main" id="frm_main" class="frm_main" method="post" <%-- <%=display %> --%>>
					<div class="category">
						<span class="mgt_book" onclick="mgt.bookslide('.mgt_book_list')">
						<img class="slide_icon" id="mgt_book_list_icon"src="./icon/collapse.png" >
						도서 관리
						</span>
						<div class="mgt_book_list" >
							<div id="menu">
							
							<img src="./icon/insert_book.png" class="item/mgt_item_input.jsp" onclick="mgt.movePage(this.className)"><br>
							<span>도서 등록</span>
							
							</div>
							<div id="menu">
							
							<img src="./icon/view_book.png" class="item.do" onclick="mgt.movePage(this.className)"><br>
							<span>도서 조회</span>
							
							</div>
					<%--	<div id="menu">
							<a href="../test.jsp">
							<img src="./icon/update_book.png"><br>
							<span>도서 수정</span>
							</a>
							</div>
							<div id="menu">
							<a href="../test.jsp" >
							<img src="./icon/delete_book.png"><br>
							<span>도서 삭제</span>
							</a>
							</div> --%>
					 	</div>
					</div>
					<br>
					
					<div class="category">
						<span class="mgt_book" onclick="mgt.bookslide('.mgt_info_list')">
						<img class="slide_icon" id="mgt_info_list_icon"src="./icon/collapse.png">
						정보 관리
						</span>
						<div class="mgt_info_list">
							<div id="menu" class="customer.do" onclick="mgt.movePage(this.className)">
							<!-- <a href="./mgt_main.jsp?inc=/customer.do?inc=./mgt_customer/mgt_customer.jsp"  > -->
							<img src="./icon/customer.png"><br>
							<span>고객 관리</span>
							<!-- </a> -->
							</div>
							<div id="menu" class="order.do" onclick="mgt.movePage(this.className)">
							<img src="./icon/graph.png"><br>
							<span>판매 관리</span>
							</div>
						</div>
					</div>
				</form>
			</div>
		</main>
		
	</div>
	<div class="test">
			<a href="./mgt_main.jsp" >
			<img class="banner" src="./icon/homepage.png">
			</a>
			<hr>
			<img  onclick="mgt.create()" class="banner" src="./icon/create.png">

		</div>	
</body>
</html>