<%--
  Created by IntelliJ IDEA.
  User: point
  Date: 17-11-29
  Time: 下午5:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.*" %>
<%@ page import="com.eu.persistxl.activeity.entity.UserBean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>发布活动</title>
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
</head>
<%--<%
    List  list= (List) session.getAttribute("info");
    UserBean userBean = (UserBean) list.get(0);
%>--%>
<body>
<fieldset class="layui-elem-field site-demo-button">
    <legend>活动主题</legend>
    <div id="aaa1">
    </div>
    <input type="text" style="font-size: 22px;font-weight: bolder; width: 100%; height: 70px;" name="e_motif1" />

</fieldset>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
    <legend>书写活动内容</legend>
</fieldset>

<textarea class="layui-textarea" id="LAY_demo1" style="display: none">
</textarea>

<div class="layui-form-item">
    <div class="layui-input-inline" style="margin-left: 50px;">

        </select>
    </div>


    <div class="site-demo-button" style="margin-top: 20px;margin-left: 50px;margin-bottom: 20px;">
        <button class="layui-btn site-demo-layedit" data-type="content">提交信息</button>
    </div>
</div>
<fieldset class="layui-elem-field site-demo-button">
    <legend>我发布过的活动</legend>
    <div id="aaa">
    </div>
    <p></p>
</fieldset>


<script type="text/javascript">


    layui.use('layedit', function () {
        var layedit = layui.layedit
            , $ = layui.jquery;

        //构建一个默认的编辑器
        var index = layedit.build('LAY_demo1');

        //编辑器外部操作
        var active = {
            content: function () {
                var time = new Date();
                // 程序计时的月从0开始取值后+1
                var m = time.getMonth() + 1;
                var t = time.getFullYear() + "-" + m + "-"
                    + time.getDate() + " " + time.getHours() + ":"
                    + time.getMinutes() + ":" + time.getSeconds();

                //留言板内容写入数据库
                var e_theme = layedit.getContent(index);
                var e_motif1 = $("input[name='e_motif1']").val();
                $(function () {
                    $.post("${pageContext.request.contextPath}/EvaluateServlet?method=Message",
                        {
                            e_motif: e_motif1,
                            e_theme: e_theme,
                            e_date: t,
                        },
                        function (data) {
                            layer.msg('发布活动成功', {icon: 1,time: 1000}, function () {
                                location.reload();
                            });
                        }
                    );
                });

            }
            , text: function () {
//                alert(layedit.getText(index)); //获取编辑器纯文本内容
                $("#aaa").append("<div class='layui-elem-quote'>" + layedit.getText(index) + "</div>");

            }
            , selection: function () {
                alert(layedit.getSelection(index));
            }
        };

        $('.site-demo-layedit').on('click', function () {
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });

        /*    //自定义工具栏
            layedit.build('LAY_demo2', {
                tool: ['face', 'link', 'unlink', '|', 'left', 'center', 'right']
                , height: 100
            })*/
    });
</script>

</body>
</html>
