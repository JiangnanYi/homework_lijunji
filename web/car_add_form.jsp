<%--
  Created by IntelliJ IDEA.
  User: Mr.黎
  Date: 2018/8/26
  Time: 14:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加</title>
</head>
<body>
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
<div><input type="button" class="form-control" value="添加" id="btnselect"></div>
<script src="js/jquery-1.11.3.js"></script>
<script>
    $("#btnselect").click(function(){
        $.ajax({
            url:"CarServlet?action=add",
            data:{id:$("#id").val(),name:$("#name").val(),price:$("#price").val(),model:$("#model").val(),describe:$("#describe").val()},
            success:function(data){
                alert(data.msg);
                $("#uid").val("");
                $("#name").val("");
                $("#price").val("");
                $("#model").val("");
                $("#describe").val("");

            },
        })
    });
</script>
</body>
</html>
