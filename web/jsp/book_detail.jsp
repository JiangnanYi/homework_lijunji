<%@ page import="entity.Book" %>
<%@ page import="util.WebUtil" %><%--
  Created by IntelliJ IDEA.
  User: Mr.黎
  Date: 2018/8/21
  Time: 9:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>书籍详情</title>
    <style>
        .msg {
            font-size: 2em;
            color: greenyellow;
        }
    </style>
</head>
<body>
<%
    Book book = (Book) request.getAttribute("book");
%>

<%= WebUtil.popSessionMsg(request) %>
<h1>${requestScope.book.name}
</h1>
<ul class="list-group">

    <li class="list-group-item">${requestScope.book.id}
    </li>
    <li class="list-group-item">${requestScope.book.price}
    </li>
    <li class="list-group-item">${requestScope.book.press}
    </li>
</ul>
<div id="div1">
    <input type="checkbox" value="苹果">苹果
    <input type="checkbox" value="雪梨">雪梨
    <input type="checkbox" value="桃子">桃子
    <input type="checkbox" value="菠萝">菠萝
    <button id="btn1">选择</button>
</div>
<script src="/assets/js/jquery1.12.4.js"></script>
<script>

    $("#btn1").click(function (index) {
        if ($("#div1 input:checked").val() == null) {
            alert("请至少选择一个");
        } else {
            var str = "";
            var str2 = "";
            $("#div1 input:checked").each(function () {
                str += str2 + $(this).val();
                str2 = ",";
            })
            alert("你的选择是:" + str)
        }
    });
    $("#div1 input:checkbox").click(function() {
        $("#div1 input:checked").prop("checked",false);
        $(this).prop("checked",true);
    });
</script>
<a href="book_list.jsp">返回</a>
</body>
</html>
