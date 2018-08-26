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
<fieldset id="fied">
    <legend>商品详情</legend>
    <div class="form-group">
        <label for="id">编号</label>
        <input type="number" class="form-control" id="id" name="id" placeholder="id">
    </div>
    <div class="form-group">
        <label for="name">名字</label>
        <input type="text" class="form-control" id="name" name="name" placeholder="name">
    </div>
    <div class="form-group">
        <label for="price">价格</label>
        <input type="number" class="form-control" id="price" name="price" placeholder="price">
    </div>
    <div class="form-group">
        <label for="model">品牌</label>
        <input type="text" class="form-control" id="model" name="model" placeholder="model">
    </div>
    <div class="form-group">
        <label for="describe">介绍</label>
        <input type="text" class="form-control" id="describe" name="describe" placeholder="describe">
    </div>
    <input type="button" value="修改" id="btnupdate"/>
</fieldset>
<script src="/js/jquery-1.11.3.js"></script>
<script src="<c:url value="/js/artDialog7/dist/dialog-plus.js"/>"></script>
<link rel="stylesheet" type="text/css" href="<c:url value="/js/artDialog7/css/dialog.css"/>"/>
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
                    var aDel=$("<a href='#' class='delete' cid="+obj.id+">删除\n</a>").data("index",index);
                    var aUpd=$("<a href='#' class='update' cid="+obj.id+">修改\n</a>").data("index",index).data("user",obj);
                    $("<td/>").append(aDel).append(aUpd).appendTo(tr);
                    $("#table").append(tr);
                });
            },
        })
    }
    app();
    //删除
    $("#table").on("click",".delete",function(){
        if(confirm('您确定要删除吗？')) {
            var cid=$(this).attr("cid");
            $.ajax({
                url:"CarServlet?action=delete",
                data:{id:cid},
                success:function(data){
                    alert(data.msg);
                    app();
                },
            })
        }
    });
    //修改
    $("#table").on("click",".update",function(){
        var obj=$(this).data("user");
        $("#id").val(obj.id);
        $("#name").val(obj.name);
        $("#price").val(obj.price);
        $("#model").val(obj.model);
        $("#describe").val(obj.describe);
    });
    $("#btnupdate").click(function(){
        $.ajax({
            url:"CarServlet?action=update",
            data:{id:$("#id").val(),name:$("#name").val(),price:$("#price").val(),model:$("#model").val(),describe:$("#describe").val()},
            success:function(data){
                alert(data.msg);
                app();
                $("#id").val("");
                $("#name").val("");
                $("#price").val("");
                $("#model").val("");
                $("#describe").val("");
            },
        })
    });
    $("#table").on("click",".update",function(){
        var d=dialog({
            title:"修改用户",
            modal:true,
            backdropOpacity:0.2,
            width:'600px',
            height:'500px',
            content:$("#fied")
        });
        d.show();
        $("#btnupdate").css("display","inline-block");
        $("#btnselect").css("display","none");
        $("#btnupdate").click(function(){
            d.close().remove();
        });
    });
</script>
</body>
</html>
