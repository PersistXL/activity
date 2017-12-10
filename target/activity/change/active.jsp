<%--
  Created by IntelliJ IDEA.
  User: point
  Date: 17-11-29
  Time: 下午5:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.eu.persistxl.activeity.entity.EvaluateBean" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page autoFlush="false" %>
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
    <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>

<body>
<%
    List<EvaluateBean> evaluateBean= (List<EvaluateBean>) request.getSession().getAttribute("message");
%>
<blockquote class="layui-elem-quote">
    <table style="border: solid 1px wheat">
        <tr align="center"  style="border: solid 1px wheat">
            <td style="border: solid 1px wheat" >姓名</td>
            <td style="border: solid 1px wheat">邮箱</td>
            <td style="border: solid 1px wheat">电话</td>
            <td style="border: solid 1px wheat">工作内容</td>
        </tr>
        <tr align="center"  style="border: solid 1px wheat">
            <td style="border: solid 1px wheat"><span name="name"><%=evaluateBean.get(i).getName()%></span></td>
            <td style="border: solid 1px wheat"><span name="email"><%=evaluateBean.get(i).getEmail()%></span></td>
            <td style="border: solid 1px wheat"><span name="phone"><%=evaluateBean.get(i).getPhone()%></span></td>
            <td style="border: solid 1px wheat"><span name="matter"><%=evaluateBean.get(i).getMatter()%></span></td>
        </tr>
    </table>
</blockquote>
</body>
</html>
