<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: binhhd1996
  Date: 2021/09/13
  Time: 22:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple calculator</title>
</head>
<body>
<h1>Simple calculator</h1>
<fieldset>
    <legend>Calculator</legend>
    <form action="/calculate" method="post">
        <label for="firstValue">First value:</label><br>
        <input type="number" name="firstValue" id="firstValue"><br>
        <label for="operation">Operation:</label>
        <select name="operation" id="operation">
            <option value="cong">+</option>
            <option value="tru" >-</option>
            <option value="nhan">X</option>
            <option value="chia">/</option>
        </select><br>
        <label for="secondValue">Second Value:</label><br>
        <input type="number" name="secondValue" id="secondValue"><br>
        <button>Calculate</button>
        <br>
        <c:if test="${result!=null}">
            <h3>Result: ${result}</h3>
        </c:if>

    </form>
</fieldset>
</body>
</html>
