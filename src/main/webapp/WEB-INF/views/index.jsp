<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: binhhd1996
  Date: 2021/09/13
  Time: 22:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Sandwich Condiments</h2>
<form action="/home" method="post">
    <input type="checkbox" name="condiment" value="Lettuce"> Lettuce
    <input type="checkbox" name="condiment" value="TomaTo"> TomaTo
    <input type="checkbox" name="condiment" value="Mustard"> Mustard
    <input type="checkbox" name="condiment"value="Sprouts"> Sprouts
    <input type="submit" value="Save">
</form>
<p>----------------------------------------------------------------------------------------------------</p>
<c:if test="${condiment!=null}">
    <p>Selected condiment list. </p>
    <c:forEach items="${condiment}" var="name">
        <li>${name}</li>
    </c:forEach>
</c:if>
</body>
</html>
