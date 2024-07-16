<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 16/07/2024
  Time: 2:42 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Settings</h1>
<form:form action="emailConfig" method="post" modelAttribute="emailConfig">
    <div>
        <label for="language">Languages:</label>
        <form:select path="language">
            <option value="English">English</option>
            <option value="Vietnamese">Vietnamese</option>
            <option value="Japanese">Japanese</option>
            <option value="Chinese">Chinese</option>
        </form:select>
    </div>
    <div>
        <label for="pageSize">Page Size:</label>
        <form:select path="pageSize">
            <option value="5">5</option>
            <option value="10">10</option>
            <option value="15">15</option>
            <option value="25">25</option>
            <option value="50">50</option>
            <option value="100">100</option>
        </form:select>
    </div>
    </div>
    <div>
        <label for="spamsFilter">Spams filter:</label>
        <form:checkbox path="spamsFilter" />
    </div>
    <p>emails per page</p>
    <div>
        <label for="signature">Signature:</label>
        <form:textarea path="signature" />
    </div>
    <div>
        <button type="submit">Update</button>
    </div>
</form:form>
</body>
</html>
