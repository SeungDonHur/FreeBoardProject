<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2022-12-08
  Time: 오후 8:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>자유게시판</title>
</head>
<style>
    #list {
        font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        width: 100%;
    }
    #list td, #list th {
        border: 1px solid #ddd;
        padding: 8px;
        text-align:center;
    }
    #list tr:nth-child(even){background-color: #f2f2f2;}
    #list tr:hover {background-color: #ddd;}
    #list th {
        padding-top: 12px;
        padding-bottom: 12px;
        text-align: center;
        background-color: #006bb3;
        color: white;
    }
</style>
<body>
<h1>자유게시판</h1>
<script>
    function do_function(){
        alert("로그아웃되었습니다.");
    }
</script>
<body>
<h1>자유게시판</h1>
<p><a href="../login/logout" onclick="do_function()">logout</a></p>
<table id="list" width="90%">
    <tr>
        <th>Id</th>
        <th>제목</th>
        <th>작성자</th>
        <th>작성 날짜</th>
        <th>수정된 날짜</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.pid}</td>
            <td>${u.title}</td>
            <td>${u.author}</td>
            <td>${u.date}</td>
            <td>${u.fixdate}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
