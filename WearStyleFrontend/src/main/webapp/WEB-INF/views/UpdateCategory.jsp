<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<jsp:include page="Header.jsp"></jsp:include>
<body>
<form action="updateCategory" method="post">
<table cellspacing="2" align="center">
<tr>
     <td colspan="2">Category Module</td>
</tr>
<tr>
     <td>Category ID</td>
     <td><input name="catgId" value="${cat.catgId }" readonly="readonly"/></td>
</tr>
<tr>
     <td>Category Name</td>
     <td><input name="catgName" value="${cat.catgName }"/></td>
</tr>
<tr>
     <td>Category Description</td>
     <td><input name="catgDescrip" value="${cat.catgDescrip }"/></td>
</tr>
<tr>
	 <td colspan="2">
	 <center><input type="submit" value="Update"/></center>
	 </td>
</tr>
</table>
</form>
</body>
</html>