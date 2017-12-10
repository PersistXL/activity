<%--
  Created by IntelliJ IDEA.
  User: point
  Date: 17-11-29
  Time: 下午5:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.eu.persistxl.activeity.entity.UserBean" %>
<%@ page import="java.util.List" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>活动详情</title>
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
    <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<%--//使用ajax输出从后台获取的信息--%>
<script type="text/javascript">
    $(document).ready(function () {
        $.post("${pageContext.request.contextPath}/EvaluateServlet?method=query",
            function (data) {
                console.log(data)
                // var _html = "";
                $("#message").html("");
                for(var i = data.length-1;i>0;i--){
                    $("#message").append("<blockquote class='layui-elem-quote'>" +
                        "<span> 活动主办人姓名:&nbsp;&nbsp;&nbsp;&nbsp;"+data[i]['e_username']+"</span><br />" +
                        "<span>活动发布的时间:&nbsp;&nbsp;&nbsp;&nbsp;"+data[i]['e_date']+"</span><br />" +
                        "<span>活动主题:&nbsp;&nbsp;&nbsp;&nbsp;"+data[i]['e_motif']+"</span><br />" +
                        "<span>活动内容:&nbsp;&nbsp;&nbsp;&nbsp;"+data[i]['e_theme']+"</span><br />" +
                        "</blockquote>")
                }
            },"json"
        );
    });
</script>
<body>
<%--//使用session获得个人信息
<%
    List list = (List) request.getSession().getAttribute("list");
    EvaluateBean evaluateBean = (EvaluateBean) list.get(0);
%>--%>

    <div id="message">
11111
    </div>
    主题:<input  readonly="readonly" type="text" name="e_motif" lay-verify="required"
            autocomplete="off" class="layui-input">

</body>
</html>
