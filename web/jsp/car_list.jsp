<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Mr.黎
  Date: 2018/8/26
  Time: 13:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="<c:url value="/assets/css/bootstrap.css"/>" rel="stylesheet">
    <link href="<c:url value="/assets/css/dashboard.css"/>" rel="stylesheet">
</head>
<body>
<div class="container">
<table class="table table-bordered" id="table">
    <tr>
        <th>编号</th>
        <th>姓名</th>
        <th>价格</th>
        <th>品牌</th>
        <th class="col-lg-3">介绍</th>
        <th>操作</th>
    </tr>
</table>
</div>
<fieldset id="fied">
    <legend>商品详情</legend>
    <div>商品编号<input type="text" name="uid" id="uid" /><span id="idPronpt"></span></div>
    <div>商品名称<input type="text" name="name" id="name"/><span id="namePronpt"></span></div>
    <div>商品价格<input type="text" name="price" id="price"/><span id="pricePronpt"></span></div>
    <div>上货日期<input type="date" name="date" id="date"/><span id="datePronpt"></span></div>
    <div>是否下架<input type="radio" name="lower" id="lower" class="judge" value="1"/>是
        <input type="radio" name="lower" id="lower" class="judge" value="0" checked="checked"/>否</div>
    <input type="button" value="添加" id="btnselect"/>
    <input type="button" value="修改" id="btnupdate"/>
</fieldset>
<script src="<c:url value="/js/jquery-1.11.3.js"/>"></script>
<script type="text/javascript">
    var app=function(){
        $.ajaxSetup({
            type:"get",
            error:function(xhr,textStatus,errorThrown){
                alert(xhr+textStatus+errorThrown);
            }
        });
        $.ajax({
            url:"CarServlet?action=list",
            success:function(data){
                $("#table tr:gt(0)").remove();
                $.each(data,function(index,obj){
                    var tr=$("<tr/>");
                    $("<td/>").html(obj.id).appendTo(tr);
                    $("<td/>").html(obj.name).appendTo(tr);
                    $("<td/>").html(obj.price).appendTo(tr);
                    $("<td/>").html(obj.model).appendTo(tr);
                    $("<td/>").html(obj.describe).appendTo(tr);
                    var aDel=$("<a href='#' class='delete' flowerId="+obj.Id+">删除\n</a>").data("index",index);
                    var aUpd=$("<a href='#' class='update' flowerId="+obj.Id+">修改\n</a>").data("index",index);
                    $("<td/>").append(aDel).append(aUpd).appendTo(tr);
                    $("#table").append(tr);
                });
            },
        })
    }
    app();
</script>
</body>
</html>
