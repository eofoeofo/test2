<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>checkOut.jsp</title>
</head>
<body>
	<center>
		<H2>계산</H2>
		선택한 상품 목록
		<HR>
		<%
			ArrayList list = (ArrayList) session.getAttribute("productlist");
			if (list == null) {
				out.println("선택한 상품이 없습니다..!");
			} else {
				for (Object productname : list) {
					out.println(productname + "<BR>");
				}
			}
		%>
		<form name=form1 method=post action=checkOut.jsp>
				<input type ="button" value="나가기" onclick="self.close();">
		</form>
		
		
	</center>

</body>
</html>