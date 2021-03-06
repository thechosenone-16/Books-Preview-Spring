<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Edit Store</h1>
<hr />

<spring:form action="editstore.edit" method="post" commandName="store">
<spring:hidden path="storeId"/>
Name:- <spring:input path="storeName" /><spring:errors path="storeName"  /><br/>
<spring:hidden path="storeContact.storeContactId"/>
PhoneNo:- <spring:input path="storeContact.storeContactPhoneNo" /><spring:errors path="storeContact.storeContactPhoneNo"  /><br />
Street:- <spring:input path="storeContact.storeContactStreet" /><spring:errors path="storeContact.storeContactStreet"  /><br />
Area:- <spring:input path="storeContact.storeContactArea" /><spring:errors path="storeContact.storeContactArea"  /><br />
City:- <spring:input path="storeContact.storeContactCity" /><spring:errors path="storeContact.storeContactCity"  /><br />
<input type="submit" />
</spring:form>
<core:forEach items="${store.books }" var="book">
<form action="bookforstore.delete" method="post">
<input type="hidden" name="bookId" value="${book.bookId }">
<input type="hidden" name="storeId" value="${store.storeId }">
<input type="submit" value="Delete ${book.bookName } from Store" />
</form>
<hr />
</core:forEach>
<form action="addbookforstore.add" method="get">
	<input type="hidden" name="storeId" value="${store.storeId }">
	<input type="submit" value="Add Book For Store">
</form>
<%@include file="Footer.jsp" %>
</body>
</html>