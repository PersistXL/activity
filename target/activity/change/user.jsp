<%--
  Created by IntelliJ IDEA.
  User: point
  Date: 17-12-25
  Time: 下午12:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <head>
    <meta charset="utf-8">
    <title>用户信息</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">

    <link rel="stylesheet" href="../Admin/plugins/layui/css/layui.css" media="all"/>
    <link rel="stylesheet" href="../Admin/css/global.css" media="all">
    <link rel="stylesheet" href="../Admin/plugins/font-awesome/css/font-awesome.min.css">
    <script type="text/javascript" src="../Admin/js/jquery.min.js"></script>
    <script type="text/javascript" src="../Admin/plugins/layui/layui.js"></script>
</head>

<body>
<div style="margin: 15px;">
    <blockquote class="layui-elem-quote">
        <a href="javascript:;" class="layui-btn layui-btn-small" id="add">
            <i class="layui-icon">&#xe608;</i> 添加用户信息
        </a>
    </blockquote>
    <fieldset class="layui-elem-field">
        <legend>工作室管理系统用户名单</legend>
        <div class="layui-field-box">
            <div>
                <table class="site-table table-hover">
                    <thead>
                    <tr>
                        <th><input type="checkbox" id="selected-all" ></th>
                        <th>ID</th>
                        <th>遍号</th>
                        <th>名字</th>
                        <th>密码</th>
                        <th>性别</th>
                        <th>权限</th>
                        <th>操作</th>

                    </tr>
                    </thead>
                    <!--内容容器-->
                    <tbody id="aa">
                    <script>
                        $(document).ready(function () {
                            $.post("${pageContext.request.contextPath}/AdminServlet?method=Admin_UserInfo",
                                function (data, status) {
                                    $("#aa").html("");
                                    for (var i = 0; i < data.length; i++) {
                                        $("#aa").append(
                                            " <tr> <th><input type='checkbox' ></th>"
                                            + "<th>" + (i + 1) + "</th>"
                                            + "<th>" + data[i]['u_userid'] + "</th>"
                                            + "<th>" + data[i]['u_username'] + "</th>"
                                            + "<th>******</th>" + "</th>"
                                            + "<th>" + data[i]['u_sex'] + "</th>"
                                            + "<th>" + data[i]['u_rank'] +
                                            "<td>" +
                                            "<a  class='layui-btn layui-btn-mini' onclick='updateUser("+data[i]['u_id']+")'>编辑</a>&nbsp;&nbsp;" +
                                            "<a  data-id='1' data-opt='del' class='layui-btn layui-btn-danger layui-btn-mini' onclick='deleteUser("+data[i]['u_id']+")'>删除</a>"
                                            + "</td>" + "</tr>")
                                    }

                                },
                                "json"
                            );

                        });

                        function updateUser (u_id) {
                            $.post("${pageContext.request.contextPath}/AdminServlet?method=findUserToId",
                                {
                                    u_id:u_id
                                },
                                function (data,status) {
                                // alert(111)
                                    $("input[name='u_userid1']").val(data[0]['u_userid']);
                                    $("input[name='u_username1']").val(data[0]['u_username']);
                                    $("input[name='u_password1']").val(data[0]['u_password']);
                                    $("input[name='u_sex1']").val(data[0]['u_sex']);
                                    $("input[name='u_id1']").val(data[0]['u_id']);
                                    $("input[name='u_rank1']").val(data[0]['u_rank']);

                                    layer.open({
                                        type: 1,
                                        title: '修改用户信息',
                                        area: ['360px', '400px'],
                                        skin: 'yourclass',
                                        content: $('#user_updata_div')
                                    });

                                },
                                "json"
                            );
                        }

                        function deleteUser(u_id) {
                            $.post("${pageContext.request.contextPath}/AdminServlet?method=Admin_deleteInfo",
                                {
                                    u_id:u_id
                                },
                                function (data,status) {
                                    layer.confirm('是否删除', {icon: 3, title:'删除'}, function(index){
                                        layer.msg('删除成功', {icon: 6,time:500},function(){
                                            location.reload();
                                        });

                                        layer.close(index);
                                    });

                                }
                            );
                        }
                        //添加用户信息
                        $(function () {
                            $("#add").click(function () {
                                layer.open({
                                    type: 1,
                                    title: '添加用户信息',
                                    area: ['360px', '400px'],
                                    skin: 'yourclass',
                                    content: $('#user_add_div')
                                });
                            });
                        });
                    </script>

                    </tbody>
                </table>
                <!--分页容器-->

            </div>
        </div>
    </fieldset>
</div>

</body>
<div id="user_add_div" style="display: none">
    <form class="layui-form" action="${pageContext.request.contextPath}/AdminServlet?method=Admin_addInfo" method="post">
        <div style="width: 20px;"></div>
        <div class="huan_a"></div>
        <div class="layui-form-item">

            <label class="layui-form-label">用户名</label>
            <div class="layui-input-inline">
                <input  style="background:#F6F6F6"   name="u_userid"  autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">姓名</label>
            <div class="layui-input-inline">
                <input  style="background:#F6F6F6"   name="u_username"  autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">密码</label>
            <div class="layui-input-inline">
                <input  style="background:#F6F6F6" type="password" name="u_password"  autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">性别</label>
            <div class="layui-input-inline">
                <input  style="background:#F6F6F6"   name="u_sex"  autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">权限</label>
            <div class="layui-input-inline">
                <input  style="background:#F6F6F6"   name="u_rank"  autocomplete="off" class="layui-input">
            </div>
        </div>

        <div style="width: 20px; "></div>
        <div class="layui-input-block huan_center">
            <button id="" class="layui-btn" lay-submit="" type="submit"  >立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </form>
</div>
<div id="user_updata_div" style="display: none">
    <form class="layui-form" action="${pageContext.request.contextPath}/AdminServlet?method=Admin_updateInfo" method="post">
        <div style="width: 20px;"></div>
        <div class="huan_a"></div>
        <div class="layui-form-item">
            <input type="hidden" name="u_id">
            <label class="layui-form-label">用户名</label>
            <div class="layui-input-inline">
                <input  style="background:#F6F6F6"   name="u_userid1"  autocomplete="off" disabled="true" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">姓名</label>
            <div class="layui-input-inline">
                <input  style="background:#F6F6F6"   name="u_username1"  autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">密码</label>
            <div class="layui-input-inline">
                <input  style="background:#F6F6F6" type="text"   name="u_password1"  autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">性别</label>
            <div class="layui-input-inline">
                <input  style="background:#F6F6F6"   name="u_sex1"  autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">权限</label>
            <div class="layui-input-inline">
                <input  style="background:#F6F6F6"   name="u_rank1"  autocomplete="off" class="layui-input">
            </div>
        </div>

        <div style="width: 20px; "></div>
        <div class="layui-input-block huan_center">
            <button class="layui-btn" lay-submit="" type="submit"  >立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </form>
</div>
<script>
    layui.use(['form', 'layedit', 'laydate'], function() {
        var form = layui.form(),
            layer = layui.layer,
            layedit = layui.layedit,
            laydate = layui.laydate;

        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');
        //自定义验证规则
        form.verify({
            title: function(value) {
                if(value.length < 5) {
                    return '标题至少得5个字符啊';
                }
            },
            pass: [/(.+){6,12}$/, '密码必须6到12位'],
            content: function(valu0e) {
                layedit.sync(editIndex);
            }
        });

        //监听提交
        form.on('submit(demo1)', function(data) {
            layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'
            })
            return false;
        });
    });
</script>
</html>
