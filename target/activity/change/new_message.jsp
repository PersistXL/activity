<%--
  Created by IntelliJ IDEA.
  User: point
  Date: 17-11-29
  Time: 下午6:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8">
    <title>layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../Admin/plugins/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="../Admin/css/global.css" media="all">
    <link rel="stylesheet" href="../Admin/plugins/font-awesome/css/font-awesome.min.css">
    <script type="text/javascript" src="../Admin/js/jquery.js"></script>
    <script src="../Admin/plugins/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../Admin/js/jquery.min.js"></script>
    <script src="../Admin/js/layui.js" charset="utf-8"></script>
</head>
<body>
<%--//使用ajax输出从后台获取的信息--%>
<script type="text/javascript">
    $(document).ready(function () {
        $.post("${pageContext.request.contextPath}/EvaluateServlet?method=find_Message",
            function (data) {
                console.log(data)
                // var _html = "";
                $("#aaa").html("");
                for(var i = data.length-1;i>=0;i--){
                    $("#aaa").append("<blockquote class='layui-elem-quote'>" +
                        "<span> <b>活动主办人姓名:</b>&nbsp;&nbsp;&nbsp;&nbsp;"+data[i]['e_username']+"</span><br />" +
                        "<span><b>活动发布的时间:</b>&nbsp;&nbsp;&nbsp;&nbsp;"+data[i]['e_date']+"</span><br />" +
                        "<span><b>活动主题:</b>&nbsp;&nbsp;&nbsp;&nbsp;"+data[i]['e_motif']+"</span><br />" +
                        "<span><b>活动内容:</b>&nbsp;&nbsp;&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp;&nbsp;"+data[i]['e_theme']+"</span><br />" +
                            "<button class=\"layui-btn layui-btn-normal\" id='updatemessage'>修改</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+
                            "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button class=\"layui-btn layui-btn-danger\">删除</button>"+
                        "</blockquote>")
                }
            },"json"
        );
    });
</script>
<script>
    layui.use('layer', function () { //独立版的layer无需执行这一句
        var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句

        //触发事件
        $("#updatemessage").click(function () {
            layer.open({
                type: 1
                , area: ['25%', '25%']
                , shade: 0.8
                , btnAlign: 'c' //按钮居中
                , id: 'LAY_layuipro' //设定一个id，防止重复弹出
                , content: $("#message_updata_div")
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
<fieldset class="layui-elem-field site-demo-button">
    <legend>我发布过的活动</legend>
    <div id="aaa">
    </div>
</fieldset>
<div id="message_updata_div">

</div>
</body>
</html>
