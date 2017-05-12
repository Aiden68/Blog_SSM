<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../common/head.jsp"%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title> - 国产simditor富文本编辑器</title>
    <meta name="keywords" content="">
    <meta name="description" content="">

    <link rel="shortcut icon" href="favicon.ico"> <link href="../static/css/bootstrap.min.css" rel="stylesheet">
    <link href="../static/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="../static/css/animate.css" rel="stylesheet">
    <link href="../static/css/style.css" rel="stylesheet">

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content">
        <div class="row">
            <div class="col-sm-12">
                <form action="<%=basePath%>backAddPost" method="post">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>创建博客</h5>

                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="form_editors.html#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="form_editors.html#">选项1</a>
                                </li>
                                <li><a href="form_editors.html#">选项2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <div class="control-group">

                            <!-- Text input-->
                            <label class="control-label" for="input01">标题</label>
                            <div class="controls">
                                <input type="text" name="title" placeholder="文章的标题" class="form-control">
                                <p class="help-block"></p>
                            </div>
                        </div>

                        <div class="control-group">

                            <!-- Select Basic -->
                            <label class="control-label">分类</label>
                            <div class="controls form-inline">
                                <select style="width: 400px;height:32px" class="form-control" id="catSelect" name="catName">
                                    <option >选择分类</option>

                                </select>
                                <button type="button" class="btn btn-default" data-toggle="modal" data-target="#cat-modal" >新增分类</button>
                            </div>

                        </div>

                        <div style="margin-top: 20px;margin-bottom: 0px" class="control-group">
                            <label class="control-label">上传图片</label>

                            <!-- File Upload -->
                            <div>
                                <button type="button" class="btn btn-default" data-toggle="modal" data-target="#pic-modal" >选择图片</button>&nbsp;&nbsp;
                                <button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModa3" >删除图片</button>
                            </div>

                        </div>
                        <!-- 显示图片列表 -->
                        <div id="piclist">
                            <!-- <div style="margin:20px;display:inline-block">
							<a href="#" class="thumbnail text-center">
							  <img name="${image.name}" style="width: 140px; height: 130px;" src="../jsp/images/pic2.jpg">
							  <input class="pull-left" type="checkbox" value="${image.id}" url="${image.url}"/>我叫图片
							</a>
						</div> -->
                        </div>
                        <!-- 显示图片列表 end -->
                        <div style="margin-top: 10px" class="control-group">
                        <textarea name="content" id="editor" placeholder="这里输入内容" autofocus>
                            <script id="editor" type="text/plain" style="width:1024px;height:500px;"></script>
                        </textarea>
                        </div>
                    </div>


                </div>
                <!-- Button -->
                <div class="controls">
                    <button style="width: 100px;margin-top: 20px" class="btn pull-right btn-success">保存</button>
                </div>
                </form>
            </div>
        </div>

        <!-- 新增分类对话框 -->
        <div class="modal fade" id="cat-modal" tabindex="-1" role="dialog" aria-labelledby="modal-label"
             aria-hidden="true">
            <div  class="modal-dialog" style="width: 400px">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span
                                aria-hidden="true">&times;</span><span class="sr-only">关闭</span></button>
                        <h4 class="modal-title" id="modal-label">新增分类</h4>
                    </div>
                    <div class="modal-body">
                        <form action="" method="post"  class="form-horizontal" id="catform">
                            <fieldset>
                                <div class="control-group">

                                    <!-- Text input-->
                                    <label class="control-label" for="input01">分类名称</label>
                                    <div class="controls">
                                        <input minlength="1" type="text" placeholder="请输入分类名称" class="form-control" name="newcatName" id="newcatName" >
                                        <p class="help-block"></p>
                                    </div>
                                </div>

                            </fieldset>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal" id="newcat">确定</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- 分类对话框end -->

        <!-- 上传图片对话框 start -->
        <div class="modal fade" id="pic-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabe2">图片上传</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" role="form" id="pic-form" enctype="multipart/form-data">
                            <div class="form-group"  >
                                <label for="image_name" class="col-xs-2 control-label" >图片名称</label>
                                <div class="col-xs-4">
                                    <input type="text" class="form-control" id="image_name" name="image_name"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="image" class="col-xs-2 control-label">图片</label>
                                <div class="col-xs-4">
                                    <input type="file" id="image" name="image"/>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-primary" id="upload">上传</button>
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
                        <h5 class="modal-title" id="myModalLabe3">删除后的图片将不能恢复！</h4>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-danger" id="delete">确定</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- 删除图片对话框 end -->
    </div>

    <!-- 全局js -->
    <script src="../static/js/jquery.min.js?v=2.1.4"></script>
    <script src="../static/js/bootstrap.min.js?v=3.3.6"></script>

    <script src="../static/js/jquery.form.js"></script>

    <!-- 自定义js -->
    <script src="../static/js/content.js?v=1.0.0"></script>


    <!-- ueditor -->
    <script type="text/javascript" charset="utf-8" src="../static/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="../static/ueditor/ueditor.all.min.js"> </script>

    <script>
        $("#catSelect").click(function(){
            var len = $("#catSelect option").size();
            if(len == 1){
                $.ajax( {
                    type    : "POST",
                    url     : "<%=path%>/listCategory?time="+new Date().getTime(),
                    success : function(backDate,textStatus,ajax){
                        //alert(backDate!=null?"收到":"为收到");
                        //alert(ajax.responseText);
                        //解析json文本
                        //var jsonJS = eval("("+backDate+")");
                        var array = backDate;
                        var size = array.length;
                        for(var i=0;i<size;i++){
                            var cat = array[i].catName;
                            var $option = $("<option value="+cat+">"+cat+"</option>");
                            $("#catSelect").append($option);
                        }
                    }
                } );
            }
        });
    </script>

    <script>
        $("#newcat").click(function(){
            var newcatName = $("#newcatName").val();
            if(newcatName.length == 0){
                alert("分类名没有填");
            }
            else{
                var url = "<%=basePath%>addCategory?time="+new Date().getTime();
                var sendData = $("#catform").serialize();
                $.post(url,sendData,function(backDate){
                    //backDate：
                    //如果服务器返回html，即backDate就是string，不要解析
                    //如果服务器返回json，即backDate就是object，要解析
                    //如果服务器返回xml，即backDate就是object，要解析
                    var option = $("<option>"+backDate+"</option>");
                    $("#catSelect").append(option);
                });
            }
        });
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
                }else {
                    $("#pic-form").ajaxSubmit({

/*
                        error: function (error) { alert("wrong"); alert(error.toString()) },
*/
                        success: function (url,backDate) {
                            alert("上传成功");
                            alert(backDate);
                            alert(url);
                            var pic = $("<div style='margin:10px;display:inline-block'><a href='#' class='thumbnail text-center'><img style='width: 140px; height: 130px;' src="+ "http://okziuy4fm.bkt.clouddn.com/" +url+"><input class='pull-left' type='checkbox' value='${image.id}' url='${image.url}'/>图片</a></div>");
                            $("#piclist").append(pic);
                        },
                        url: '<%=basePath%>addImage', /*设置post提交到的页面*/
                        type: "post", /*设置表单以post方法提交*/
                       /* dataType: "json" /!*设置返回值类型为文本*!/*/
                    });

                }
            });

            //点击确定退出
            $('#exit').click(function() {
                $.get('${pageContext.request.contextPath}' + '/UserAction?type=3', function(data, status) {
                    location.href = '<%=basePath%>' + 'index.jsp';
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
                $.post('<%=basePath%>' + '/deleteImage', {
                    ids: ids,
                    urls: urls
                },function(data, status) {
                    $('#myModa3').modal('hide');
                    location.href = '${pageContext.request.contextPath}' + '/jsp/addPost.jsp';
                });
            });
        });
    </script>
    <script>
        var ue = UE.getEditor('editor');
    </script>

    
    
</body>

</html>
