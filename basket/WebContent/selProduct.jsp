<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>상품 선택 페이지</title>
</head>
<%
	// HTML 폼에서 전달된 데이터 한글 인코딩
	request.setCharacterEncoding("UTF-8");
	
	// session에 username 이름으로 HTML 폼의 <input type="text"name="username"/>에 입력된 값을 저장함
	session.setAttribute("username",request.getParameter("username"));
%>
<body>
	<center>
		<H2>상품 선택</H2>
		<HR>
		<%=session.getAttribute("username") %>님이 로그인 한 상태 입니다.
		<HR>
		<form name="form1" method="POST" action="add.jsp">
			<select name="product">
				<option>사과</option>
				<option>바나나</option>
				<option>파인애플</option>
				<option>감</option>
				<option>딸기</option>
			</select> <input type="submit" value="추가" />
		</form>
		<a href="checkOut.jsp">계산</a>
	</center>

</body>
</html>