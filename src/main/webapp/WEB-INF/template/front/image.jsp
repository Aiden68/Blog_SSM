<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../common/head.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="AndOne">
    <meta name="description" content="AndOne，一个程序员的个人原创博客。心之所向，无所不能。" id="meta_description">
    <meta name="keywords" content="Java,大数据,机器学习">
    <title>AndOne的个人博客</title>
    <link rel="canonical" href="#" />
    <link rel="icon" href="#">
    <!-- Bootstrap core CSS. From bootcdn -->
    <link rel="shortcut icon" href="favicon.ico"> <link href="../../../static/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../../static/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">
	<!-- Custom styles for this template. -->
    <link href="../../../static/css/flyat.min.css-d=v2.3.css" tppabs="http://cdn.flyat.cc/css/flyat.min.css?d=v2.3" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="../oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js" tppabs="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="../oss.maxcdn.com/respond/1.4.2/respond.min.js" tppabs="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
<!-- header start-->
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand logo" href="#"></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav ">
                <li ><a href="<%=basePath%>">首页</a></li>
                <li class="dropdown">
                    <a href="#" onclick="catList();" class="dropdown-toggle" data-toggle="dropdown">文章分类 <span class="caret"></span></a>
                    <ul class="dropdown-menu" id="catMenu" role="menu">
                        <li><a href="<%=basePath%>list">所有文章</a></li>

                    </ul>
                </li>
                <li ><a href="" ><i class="glyphicon glyphicon glyphicon-search"></i>站内搜索</a></li>
                <li ><a href="" ><i class="glyphicon glyphicon-info-sign"></i>关于</a></li>
                <li ><a href="" ><i class="glyphicon glyphicon-comment"></i>留言</a></li>
                <li ><a href="" ></i>友情链接</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href=""  data-toggle="tooltip" data-placement="bottom" title="个人博客暂不开放注册，只限内测账号登录使用"><i class="glyphicon glyphicon-log-in"></i>登陆</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav><!-- header end -->
<div class="container">
    <div class="jumbotron" style="background: url('../static/img/005.jpg') no-repeat center center;height:350px">
      <%--<h1>一个程序员的个人博客</h1>
      <p>人生不过几十载，
          又能几次重头来。
          本就匆匆过路客，
          缘何俗事惹自哀？<br>
          世人笑我太痴呆，
          我笑他人实不该。
          不被凡尘俗事扰，
          且安且得且自在。</p>--%>
    </div>
</div> <!-- /container -->

<div class="container" style="min-height: 100%;">
    <!-- 首部 start -->
    <div class="row">
        <div class="col-xs-8 col-xs-offset-2">
            <h3 class="page-header">
                ${user.username}&nbsp;&nbsp;&nbsp;<small>Totals:<span class="badge">${imageList.size()}</span></small>
                <%--<div class="btn-group pull-right">--%>
                    <%--<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">--%>
                        <%--图片操作<span class="caret"></span>--%>
                    <%--</button>--%>
                    <%--<ul class="dropdown-menu" role="menu">--%>
                        <%--<li><a href="#" data-toggle="modal" data-target="#myModa2">上传</a></li>--%>
                        <%--<li><a href="#" data-toggle="modal" data-target="#myModa3">删除</a></li>--%>
                        <%--<li><a href="<%=path %>/jsp/backIndex.jsp">返回</a></li>--%>
                    <%--</ul>--%>
                <%--</div>--%>
            </h3>
        </div>
    </div>
    <!-- 首部 end -->

    <!-- 显示图片列表 -->
    <c:forEach items="${imageList}" varStatus="status" var="image">
    <c:choose>
        <c:when test="${status.first or status.index % 4 eq 0}">
            <div class="row">
            <div class="col-xs-2 col-xs-offset-2">
                <a href="#" class="thumbnail text-center">
                    <img name="${image.name}" date="<fmt:formatDate value='${image.date}' pattern='yyyy-MM-dd HH:mm'/>" style="width: 140px; height: 130px;" src="http:///okziuy4fm.bkt.clouddn.com/${image.url}"><!--这里请填写自己的链接地址，详见下图-->
                    <input class="pull-left" type="checkbox" value="${image.id}" url="${image.url}"/>${image.name }
                </a>
            </div>
        </c:when>
        <c:when test="${status.index % 4 eq 3 and not status.last }">
            <div class="col-xs-2">
                <a href="#" class="thumbnail text-center">
                    <img name="${image.name}" date="<fmt:formatDate value='${image.date}' pattern='yyyy-MM-dd HH:mm'/>" style="width: 140px; height: 130px;" src="http://okziuy4fm.bkt.clouddn.com/${image.url}"><!--这里请填写自己的链接地址，详见下图-->
                    <input class="pull-left" type="checkbox" value="${image.id}" url="${image.url}" />${image.name }
                </a>
            </div>
            </div>
        </c:when>
        <c:otherwise>
            <div class="col-xs-2">
                <a href="#" class="thumbnail text-center">
                    <img name="${image.name}" date="<fmt:formatDate value='${image.date}' pattern='yyyy-MM-dd HH:mm'/>" style="width: 140px; height: 130px;" src="http:///okziuy4fm.bkt.clouddn.com/${image.url}"><!--这里请填写自己的链接地址，详见下图-->
                    <input class="pull-left" type="checkbox" value="${image.id}" url="${image.url}"/>${image.name }
                </a>
            </div>
        </c:otherwise>
    </c:choose>
    <c:if test="${status.last}">
</div>
</c:if>
</c:forEach>
<!-- 显示图片列表 end -->

</div>
<footer class="blog-footer">
    <p>
        <a href="https://github.com/Aiden68" target="_blank" title="github" data-toggle="tooltip" data-placement="top"><i class="fa fa-github fa-2x"></i>GitHub</a>
    </p>
    <p>
        Copyright&copy; 2016-2017 andonj.cn <a href="" tppabs="http://www.miitbeian.gov.cn/publish/query/indexFirst.action" target="_blank"></a> Powered by AndOne.
    </p>
</footer>
<a class="to-top" title="坐稳喽！哥带你飞" data-toggle="tooltip" data-placement="bottom"></a>
<!-- 显示图片对话框 start -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel"></h4>
            </div>
            <div class="modal-body" id="modal-content">
            </div>
        </div>
    </div>
</div>
<!-- 显示图片对话框 end -->

<!-- 上传图片对话框 start -->
<div class="modal fade" id="myModa2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabe2">Image Upload</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" role="form" id="form">
                    <div class="form-group"  >
                        <label for="image_name" class="col-xs-2 control-label" >Title</label>
                        <div class="col-xs-4">
                            <input type="text" class="form-control" id="image_name" name="image_name"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="image" class="col-xs-2 control-label">Image</label>
                        <div class="col-xs-4">
                            <input type="file" id="image" name="image"/>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                <button type="button" class="btn btn-primary" id="upload">Upload</button>
            </div>
        </div>
    </div>
</div>
<!-- 上传图片对话框 end -->

<!-- 删除图片对话框 start -->
<div class="modal fade" id="myModa3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width: 400px">
        <div class="modal-content">
            <div  class="modal-header">
                <h4 class="modal-title" id="myModalLabe3">确定要删除吗?</h4>
            </div>
            <div class="modal-body" style="text-align: center;">
                <h4 class="modal-title" id="myModalLabe3">删除后的图片将不能恢复！</h4>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-danger" id="delete">确定</button>
            </div>
        </div>
    </div>
</div>
<!-- 删除图片对话框 end -->
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<!-- 全局js -->
<script src="../static/js/jquery.min.js?v=2.1.4"></script>
<script src="../static/js/bootstrap.min.js?v=3.3.6"></script>

<script src="../static/js/jquery.form.js"></script>
<script type="text/javascript">
    function catList() {
        var len = $("#catMenu li").size();
        if(len == 1){
            $.ajax( {
                type    : "POST",
                url     : "<%=basePath%>listCategory?time="+new Date().getTime(),
                success : function(backDate,textStatus,ajax){
                    //alert(backDate!=null?"收到":"为收到");
                    //alert(ajax.responseText);
                    //解析json文本
                    //var jsonJS = eval("("+backDate+")");
                    var array = backDate;
                    var size = array.length;
                    for(var i=0;i<size;i++){
                        var cat = array[i].catName;
                        var url = "<%=basePath%>list?catName="+cat;
                        var $li = $("<li><a href="+ url +">"+cat+"</a></li>");
                        $("#catMenu").append($li);
                    }

                }
            } );
        }
    }
</script>
<script type="text/javascript">
    $(document).ready(function() {
        //点击图片
        $('img').click(function() {
            $('#myModalLabel').html($(this).attr('name') + '&nbsp;&nbsp;&nbsp;<small>' + $(this).attr('date') + '</small>');
            $('#modal-content').html('<img class=\'img-responsive\' src=\'' + $(this).attr('src') + '\'/>');
            $('#myModal').modal('show');
        });

        //点击上传
        $('#upload').click(function() {
            if ($('#image_name').val() == '' || $('#image').val() == '') {
            } else {
                $('#form').attr('action', '<%=basePath%>addImage');
                $('#form').attr('enctype', 'multipart/form-data');
                $('#form').attr('method', 'post');
                $('#form').submit();
            }
        });

        //点击确定退出
        $('#exit').click(function() {
            $.get('${pageContext.request.contextPath}' + '/UserAction?type=3', function(data, status) {
                location.href = '${pageContext.request.contextPath}' + '/index.jsp';
            });
        });

        //点击确定删除图片
        $('#delete').click(function() {
            var ids = "";
            var urls = "";
            $('input[type=checkbox]:checked').each(function() {
                ids += $(this).val() + ',';
                urls += $(this).attr('url') + ',';
            });
            $.post('<%=basePath%>deleteImage', {
                ids: ids,
                urls: urls
            },function(data, status) {
                $('#myModa3').modal('hide');
                location.href = '${pageContext.request.contextPath}' + '/image?type=4';
            });
        });
    });
</script>
</body>
</html>
