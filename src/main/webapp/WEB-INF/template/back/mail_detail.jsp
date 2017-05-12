<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../common/head.jsp"%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title> - 查看邮件</title>
    <meta name="keywords" content="">
    <meta name="description" content="">

    <link rel="shortcut icon" href="favicon.ico"> <link href="../static/css/bootstrap.min.css" rel="stylesheet">
    <link href="../static/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="../static/css/animate.css" rel="stylesheet">
    <link href="../static/css/style.css" rel="stylesheet">
    <link href="../static/css/plugins/iCheck/custom.css" rel="stylesheet">

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content">
        <div class="row">
            <div class="col-sm-3">
                <div class="ibox float-e-margins">
                    <div class="ibox-content mailbox-content">
                        <div class="file-manager">
                            <a class="btn btn-block btn-primary compose-mail" href="mail_compose.html">回复</a>
                            <div class="space-25"></div>
                            <h5>文件夹</h5>
                            <ul class="folder-list m-b-md" style="padding: 0">
                                <li>
                                    <a href="mailbox.html"> <i class="fa fa-inbox "></i> 新评论 <span class="label label-warning pull-right">16</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="mailbox.html"> <i class="fa fa-envelope-o"></i> 发信</a>
                                </li>
                                <li>
                                    <a href="mailbox.html"> <i class="fa fa-certificate"></i> 重要</a>
                                </li>
                                <li>
                                    <a href="mailbox.html"> <i class="fa fa-file-text-o"></i> 草稿 <span class="label label-danger pull-right">2</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="mailbox.html"> <i class="fa fa-trash-o"></i> 垃圾箱</a>
                                </li>
                            </ul>
                            <h5>分类</h5>
                            <ul class="category-list" style="padding: 0">
                                <li>
                                    <a href="mail_compose.html#"> <i class="fa fa-circle text-navy"></i> 工作</a>
                                </li>
                                <li>
                                    <a href="mail_compose.html#"> <i class="fa fa-circle text-danger"></i> 文档</a>
                                </li>
                                <li>
                                    <a href="mail_compose.html#"> <i class="fa fa-circle text-primary"></i> 社交</a>
                                </li>
                                <li>
                                    <a href="mail_compose.html#"> <i class="fa fa-circle text-info"></i> 广告</a>
                                </li>
                                <li>
                                    <a href="mail_compose.html#"> <i class="fa fa-circle text-warning"></i> 客户端</a>
                                </li>
                            </ul>

                            <h5 class="tag-title">标签</h5>
                            <ul class="tag-list" style="padding: 0">
                                <li><a href="mail_compose.html"><i class="fa fa-tag"></i> 朋友</a>
                                </li>
                                <li><a href="mail_compose.html"><i class="fa fa-tag"></i> 工作</a>
                                </li>
                                <li><a href="mail_compose.html"><i class="fa fa-tag"></i> 家庭</a>
                                </li>
                                <li><a href="mail_compose.html"><i class="fa fa-tag"></i> 孩子</a>
                                </li>
                                <li><a href="mail_compose.html"><i class="fa fa-tag"></i> 假期</a>
                                </li>
                                <li><a href="mail_compose.html"><i class="fa fa-tag"></i> 音乐</a>
                                </li>
                                <li><a href="mail_compose.html"><i class="fa fa-tag"></i> 照片</a>
                                </li>
                                <li><a href="mail_compose.html"><i class="fa fa-tag"></i> 电影</a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-9 animated fadeInRight">
                <div class="mail-box-header">
                    <div class="pull-right tooltip-demo">
                        <a href="mail_compose.html" class="btn btn-white btn-sm" data-toggle="tooltip" data-placement="top" title="回复"><i class="fa fa-reply"></i> 回复</a>
                        <a href="mail_detail.html#" class="btn btn-white btn-sm" data-toggle="tooltip" data-placement="top" title="打印邮件"><i class="fa fa-print"></i> </a>
                        <a href="mailbox.html" class="btn btn-white btn-sm" data-toggle="tooltip" data-placement="top" title="标为垃圾邮件"><i class="fa fa-trash-o"></i> </a>
                    </div>
                    <h2>
                    查看评论
                </h2>
                    <div class="mail-tools tooltip-demo m-t-md">


                        <h3>
                        <span class="font-noraml">回复博客主题： ${post.title}</span>
                    </h3>
                        <h5>
                        <span class="pull-right font-noraml"><fmt:setLocale value="en"/>< fmt:formatDate value="${comment.createTime}"/></span>
                            <br>
                            <span class="font-noraml">评论者昵称： </span>${comment.name}<br><br>
                        <span class="font-noraml">评论者邮箱： </span>${comment.email}
                    </h5>
                    </div>
                </div>
                <div class="mail-box">


                    <div class="mail-body">
                        ${comment.content}
                    </div>
                    <div class="mail-attachment">
                        <%--<p>--%>
                            <%--<span><i class="fa fa-paperclip"></i> 2 个附件 - </span>--%>
                            <%--<a href="mail_detail.html#">下载全部</a> |--%>
                            <%--<a href="mail_detail.html#">预览全部图片</a>--%>
                        <%--</p>--%>

                        <%--<div class="attachment">--%>
                            <%--<div class="file-box">--%>
                                <%--<div class="file">--%>
                                    <%--<a href="mail_detail.html#">--%>
                                        <%--<span class="corner"></span>--%>

                                        <%--<div class="icon">--%>
                                            <%--<i class="fa fa-file"></i>--%>
                                        <%--</div>--%>
                                        <%--<div class="file-name">--%>
                                            <%--Document_2014.doc--%>
                                        <%--</div>--%>
                                    <%--</a>--%>
                                <%--</div>--%>

                            <%--</div>--%>
                            <%--<div class="file-box">--%>
                                <%--<div class="file">--%>
                                    <%--<a href="mail_detail.html#">--%>
                                        <%--<span class="corner"></span>--%>

                                        <%--<div class="image">--%>
                                            <%--<img alt="image" class="img-responsive" src="img/p1.jpg">--%>
                                        <%--</div>--%>
                                        <%--<div class="file-name">--%>
                                            <%--Italy street.jpg--%>
                                        <%--</div>--%>
                                    <%--</a>--%>

                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<div class="file-box">--%>
                                <%--<div class="file">--%>
                                    <%--<a href="mail_detail.html#">--%>
                                        <%--<span class="corner"></span>--%>

                                        <%--<div class="image">--%>
                                            <%--<img alt="image" class="img-responsive" src="img/p2.jpg">--%>
                                        <%--</div>--%>
                                        <%--<div class="file-name">--%>
                                            <%--My feel.png--%>
                                        <%--</div>--%>
                                    <%--</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<div class="clearfix"></div>--%>
                        <%--</div>--%>
                    </div>
                    <div class="mail-body text-right tooltip-demo">
                        <a class="btn btn-sm btn-white" href="mail_compose.html"><i class="fa fa-reply"></i> 回复</a>
                        <a class="btn btn-sm btn-white" href="mail_compose.html"><i class="fa fa-arrow-right"></i> 下一条</a>
                        <button title="" data-placement="top" data-toggle="tooltip" type="button" data-original-title="打印这封邮件" class="btn btn-sm btn-white"><i class="fa fa-print"></i> 打印</button>
                        <button title="" data-placement="top" data-toggle="tooltip" data-original-title="删除邮件" class="btn btn-sm btn-white"><i class="fa fa-trash-o"></i> 删除</button>
                    </div>
                    <div class="clearfix"></div>


                </div>
            </div>
        </div>
    </div>


    <!-- 全局js -->
    <script src="../static/js/jquery.min.js?v=2.1.4"></script>
    <script src="../static/js/bootstrap.min.js?v=3.3.6"></script>



    <!-- 自定义js -->
    <script src="../static/js/content.js?v=1.0.0"></script>


    <!-- iCheck -->
    <script src="../static/js/plugins/iCheck/icheck.min.js"></script>
    <script>
        $(document).ready(function () {
            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
            });
        });
    </script>

    
    

</body>

</html>
