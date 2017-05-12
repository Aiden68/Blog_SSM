<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../common/head.jsp"%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title> - 数据表格</title>
    <meta name="keywords" content="">
    <meta name="description" content="">

    <link rel="shortcut icon" href="favicon.ico"> <link href="../static/css/bootstrap.min.css" rel="stylesheet">
    <link href="../static/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="../static/css/animate.css" rel="stylesheet">
    <link href="../static/css/style.css" rel="stylesheet">

    <!-- Data Tables -->
    <link href="../static/css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>基本 <small>分类，查找</small></h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="table_data_tables.html#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="table_data_tables.html#">选项1</a>
                                </li>
                                <li><a href="table_data_tables.html#">选项2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">

                        <form action="" id="listForm" method="post">
                            <table align="center" class="text-center table table-striped  table-hover table-bordered">
                                <thead>
                                <tr>
                                    <th class="text-center">序号</th>
                                    <th class="text-center">标题</th>
                                    <th class="text-center">分类</th>
                                    <th class="text-center">创建时间</th>
                                    <th class="text-center">操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${page.result}" var="post" varStatus="vars">
                                    <tr>
                                        <td>${vars.count }</td>
                                        <td>${post.title }</td>
                                        <td>${post.catName }</td>
                                        <td>< fmt:setLocale value="en"/> < fmt:formatDate value="${post.createTime}"/></td>
                                        <td><a title="修改" href="<%=basePath%>backEdit?id=${post.id}"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>&nbsp;&nbsp;&nbsp;
                                            <a title="删除" href="#" data-toggle="modal" data-target="#myModa3" url="${post.id }"><i class="fa fa-trash" aria-hidden="true"></i></a></td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <nav style="text-align: center" aria-label="Page navigation">
                                <ul class="pagination">
                                    <li>
                                        <a href="#" aria-label="Previous" onclick="firstPage();">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" aria-label="Previous" onclick="previousPage();">
                                            <span aria-hidden="true">&lsaquo;</span>
                                        </a>
                                    </li>
                                    <c:forEach items="${pageList}" var="temp" varStatus="vars" >
                                        <c:if test="${vars.count >= (page.currentPage - 2)&&vars.count <= (page.currentPage + 2)}">
                                            <c:choose>
                                                <c:when test="${vars.count eq page.currentPage }">
                                                    <li class="active" ><a href="<%=basePath%>/backListPost?pageSize=10&currentPage=${vars.count}">
                                                            ${vars.count}</a></li>
                                                </c:when>
                                                <c:otherwise>
                                                    <li><a href="<%=basePath%>/backListPost?pageSize=10&currentPage=${vars.count}">
                                                            ${vars.count}</a></li>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:if>

                                    </c:forEach>
                                    <c:if test="${page.totalPage > (page.currentPage + 2)}">
                                        <li class="disabled"><a href="#">...</a></li>
                                    </c:if>
                                    <li>
                                        <a href="#" aria-label="Next" onclick="nextPage();">
                                            <span aria-hidden="true">&rsaquo;</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" aria-label="Next" onclick="lastPage();">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                        </form>

                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- 删除确认框 start -->
    <div class="modal fade" id="myModa3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog" style="width: 400px">
            <div class="modal-content">
                <div  class="modal-header">
                    <h4 class="modal-title" id="myModalLabe3">确定要删除吗?</h4>
                </div>
                <div class="modal-body" style="text-align: center;">
                    <h5 class="modal-title" id="myModalLabe3">删除后的博客将不能恢复！</h4>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-danger" id="delete">确定</button>
                </div>
            </div>
        </div>
    </div>
    <!-- 删除 end -->
    <!-- 全局js -->
    <script src="../static/js/jquery.min.js?v=2.1.4"></script>
    <script src="../static/js/bootstrap.min.js?v=3.3.6"></script>



    <script src="../static/js/plugins/jeditable/jquery.jeditable.js"></script>

    <!-- Data Tables -->
    <script src="../static/js/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="../static/js/plugins/dataTables/dataTables.bootstrap.js"></script>

    <!-- 自定义js -->
    <script src="../static/js/content.js?v=1.0.0"></script>


    <!-- Page-Level Scripts -->
    <!--确认删除-->
    <script type="text/javascript">
        var id;
        $("table tr a").click(function(){
            id = $(this).attr('url');
        });

        $("#delete").click(function(){
            $('#myModa3').modal('hide');
            location.href = '<%=basePath%>/backDeletePost?id=' + id;
        })
    </script>
    <!-- 分页js -->
    <script type="text/javascript">
        // 当前第几页数据
        var currentPage = ${page.currentPage};

        // 总页数
        var totalPage = ${page.totalPage};

        function submitForm(actionUrl){
            var formElement = document.getElementById("listForm");
            formElement.action = actionUrl;
            formElement.submit();
        }

        // 第一页
        function firstPage(){
            if(currentPage == 1){
                alert("已经是第一页数据");
                return false;
            }else{
                submitForm("<%=basePath%>/backListPost?pageSize=10&currentPage=1");
                return true;
            }
        }

        // 下一页
        function nextPage(){
            if(currentPage == totalPage){
                alert("已经是最后一页数据");
                return false;
            }else{
                var url = "<%=basePath%>/backListPost?pageSize=10&currentPage=" + (currentPage+1);
                submitForm(url);
                //return true;
            }
        }

        // 上一页
        function previousPage(){
            if(currentPage == 1){
                alert("已经是第一页数据");
                return false;
            }else{
                submitForm("<%=basePath%>/backListPost?pageSize=10&currentPage=" + (currentPage-1));
                return true;
            }
        }

        // 尾页
        function lastPage(){
            if(currentPage == totalPage){
                alert("已经是最后一页数据");
                return false;
            }else{
                submitForm("<%=basePath%>/backListPost?pageSize=10&currentPage=${page.totalPage}");
                return true;
            }
        }
        function initPage(){
            var genderRequest = "${gender}" ;
            var genderVal = 0;
            var genderElement = document.getElementById("gender");
            if(genderRequest != ""){
                genderVal = parseInt(genderRequest);
            }

            var options = genderElement.options;
            var i = 0;
            for(i = 0; i < options.length; i++){
                if(options[i].value == genderVal){
                    options[i].selected=true;
                    break;
                }
            }

        }
    </script>

    
    

</body>

</html>
