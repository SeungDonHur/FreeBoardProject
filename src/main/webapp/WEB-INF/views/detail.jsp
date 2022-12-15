<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2022-12-09
  Time: 오전 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>${detail.title}</title>
    <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href='deleteok/'+id;
        }
    </script>
</head>
<body>
<h1><c:out value="${detail.title}"/></h1>
<p><c:out value="${detail.content}"/></p>
<p>
    작성일: <c:out value="${detail.date}"/><br>
    수정일: <c:out value="${detail.fixdate}"/>
</p>
<p><a href="editform/${detail.pid}">수정</a></p>
<p><a href="javascript:delete_ok('${detail.pid}')">삭제</a></p>
<button type="button" onclick="history.back()">목록</button>
</body>
</html>
