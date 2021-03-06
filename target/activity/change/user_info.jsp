<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.eu.persistxl.activeity.entity.UserBean" %>
<%@ page import="java.util.List" %>
<%@ page isELIgnored="false" %>

<%--
  Created by IntelliJ IDEA.
  User: point
  Date: 17-11-29
  Time: 下午5:51
  To change this template use File | Settings | File Templates.To
--%>

<html>
<head>
    <title>个人信息</title>
    <meta charset="utf-8">
    <%--<title>layui</title>--%>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../Admin/plugins/layui/css/layui.css" media="all">
    <script type="text/javascript" src="../Admin/js/jquery.min.js"></script>
    <script src="../Admin/plugins/layui/layui.js" charset="utf-8"></script>

</head>

<%--//使用ajax输出从后台获取的信息--%>
<script type="text/javascript">
    $(document).ready(function () {
        $.post("${pageContext.request.contextPath}/UserServlet?method=username",
            function (data) {
                console.log(data[0].u_userid)
                //获取input框id,通过id输出内容

                // $("#username1").val(data[0].u_password);
                // $("#username2").val(data[0].u_username);

                //通过获取input框的name,输出内容

                $("input[name='u_userid']").val(data[0]['u_userid']);
                $("input[name='u_username']").val(data[0]['u_username']);
                $("input[name='u_password']").val(data[0]['u_password']);
                $("input[name='u_sex']").val(data[0]['u_sex']);
                // $("input[name='u_class']").val(data[0]['u_class']);
            }, "json"
        );
    });
</script>


<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
    <legend>个人信息</legend>
</fieldset>
<div style="margin-left: 560px;">

    <div class="site-demo-upload">
        <img id="LAY_demo_upload" src="./images/0.jpg">
        <div class="site-demo-upbar">
            <input type="file" name="file" class="layui-upload-file" id="username">
        </div>
    </div>
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
        <legend>头像</legend>
    </fieldset>
</div>
<div style="margin-left: 500px;">
    <%--
    //使用session获得个人信息
    <%
         List list = (List) request.getSession().getAttribute("info");
         UserBean userBean = (UserBean) list.get(0);
     %>
     --%>
    <div class="layui-form layui-form-pane">

        <div class="layui-form-item">
            <label class="layui-form-label">账号:</label>
            <div class="layui-input-inline">
                <input readonly="readonly" type="text" name="u_userid" lay-verify="required"
                       autocomplete="off" class="layui-input" value="<%--<%=userBean.getU_userid()%>--%>">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">姓名：</label>
            <div class="layui-input-inline">
                <input id="username1" readonly="readonly" type="text" name="u_username" lay-verify="required"
                       autocomplete="off" class="layui-input" value="<%--<%=userBean.getU_username()%>--%>">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">密码：</label>
            <div class="layui-input-inline">
                <input type="password" name="u_password" lay-verify="required" placeholder="请输入" autocomplete="off"
                       class="layui-input" readonly="readonly" value="<%--<%=userBean.getU_sex()%>--%>">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">性别：</label>
            <div class="layui-input-inline">
                <input type="text" name="u_sex" lay-verify="required" placeholder="请输入" autocomplete="off"
                       class="layui-input" readonly="readonly" value="<%--<%=userBean.getU_password()%>--%>">
            </div>
        </div>
        <div style="margin-left: 100px;">
            <button class="layui-btn layui-btn-normal" id="updatePass">修改密码</button>
        </div>
        <div id="password_updata_div" style="display: none;text-align: center;padding: 20px">
            <div class="layui-form-item">
                <label class="layui-form-label">新密码</label>
                <div class="layui-input-block">
                    <input type="password" id="password" name="password" value="" lay-verify="required"
                           placeholder="请输入新密码" class="layui-input">
                    <br/>
                    <button class="layui-btn layui-btn-normal" id="enter" style="margin-right: 35%">确认修改</button>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script>
    layui.use('layer', function () { //独立版的layer无需执行这一句
        var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句

        //触发事件
        $("#updatePass").click(function () {
            layer.open({
                type: 1
                , area: ['25%', '25%']
                , shade: 0.8
                , btnAlign: 'c' //按钮居中
                , id: 'LAY_layuipro' //设定一个id，防止重复弹出
                , content: $("#password_updata_div")
            });
        })

        $("#enter").click(function () {
            var x = document.getElementById("password");
            // alert(x);
            // var psw =  window.sessionStorage.setItem("password",x);
            // alert()
            var y = x.value
            $.post("${pageContext.request.contextPath}/UserServlet?method=updatepsw",
                {
                    pass: y

                },
                function (data) {

                    // psw= window.sessionStorage.setItem("password",x)
                    // alert(x.value);
                    // alert("修改密码成功");
                    location.reload();
                }
            );
        })

    });
</script>
</html>
