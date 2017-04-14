<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%  String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>某管理系统</title>
    <link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet" type="text/css">

<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->
<style>
    body {
        padding-top: 50px;
        padding-bottom: 40px;
        color: #5a5a5a;
    }

    /* 下面是左侧导航栏的代码 */
    .sidebar {
        position: fixed;
        top: 51px;
        bottom: 0;
        left: 0;
        z-index: 1000;
        display: block;
        padding: 20px;
        overflow-x: hidden;
        overflow-y: auto;
        background-color: #ddd;
        border-right: 1px solid #eee;
    }

    .nav-sidebar {
        margin-right: -21px;
        margin-bottom: 20px;
        margin-left: -20px;
    }

    .nav-sidebar > li > a {
        padding-right: 20px;
        padding-left: 20px;
    }

    .nav-sidebar > .active > a,
    .nav-sidebar > .active > a:hover,
    .nav-sidebar > .active > a:focus {
        color: #fff;
        background-color: #428bca;
    }
    已久

    .main {
        padding: 20px;
    }

    .main .page-header {
        margin-top: 0;
    }
</style>

</head>

<body>
    <!--下面是顶部导航栏的代码-->
    <nav class="navbar navbar-default navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">AneOne博客管理</a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li ><a href="<%=path %>">首页</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">功能<span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li class="dropdown-header">业务功能</li>
                        <li class="active"><a href="#">博客列表</a></li>
                        <li><a href="<%=path%>/jsp/addPost.jsp">创建博客</a></li>
                        <li><a href="<%=path%>/image?type=4">图片管理</a></li>
                        <li class="divider"></li>
                        <li class="dropdown-header">系统功能</li>
                        <li><a href="#">设置</a></li>
                    </ul>
                </li>
                <li><a href="#">帮助</a></li>
            </ul>
            <c:if test="${not empty username}">
            	<ul class="nav navbar-nav navbar-right">
	              <li><a href="${pageContext.request.contextPath }/logout">退出</a></li>
	            </ul>
            </c:if>
        </div>
    </div>
</nav>

<!—自适应布局-->
<div class="container-fluid">
    <div class="row">
        <!—左侧导航栏-->

        <div class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-sidebar">
                <li ><a href="#">首页</a></li>
            </ul>
            <ul class="nav nav-sidebar">
                <li class="active"><a  href="#">博客列表</a></li>
                <li><a href="<%=path%>/backaddpost">创建博客</a></li>
                <li><a href="<%=path%>/backlistcomment">评论列表</a></li>
                <li><a href="<%=path%>/image?type=4">图片管理</a></li>
            </ul>
            <ul class="nav nav-sidebar">
                <li><a href="#">设置</a></li>
                <li><a href="#">帮助</a></li>
            </ul>
        </div>
        <!—右侧管理控制台-->
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <!-- 主要内容 -->
            <div class="container summary">

                <!-- 简介 -->
                <div class="row" id="summary-container">
                    <div class="col-md-1">
                    </div>
                    <div class="col-md-10">
		            <h2 style="margin: 20px 0;">文章列表</h2>
		            <form action="" id="listForm" method="post">
		            <table align="center" class="text-center table table-striped  table-hover">
		               <thead>
		                 <tr>
		                   <th class="text-center">序号</th>
		                   <th class="text-center">标题</th>
		                   <th class="text-center">文章编号</th>
		                   <th class="text-center">创建时间</th>
		                   <th class="text-center">操作</th>
		                 </tr>
		               </thead>
		               <tbody>
		               <c:forEach items="${result.resultList}" var="post" varStatus="vars">
							<tr>
								<td>${vars.count }</td>
								<td>${post.title }</td>
								<td>${post.id }</td>
								<td>${post.createtime }</td>
								<td><a href="${pageContext.request.contextPath }/editpost?id=${post.id}">修改</a>&nbsp;&nbsp;&nbsp;
								<a href="#" data-toggle="modal" data-target="#myModa3" url="${post.id }">删除</a></td>
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
					    <c:forEach items="${pageList}" var="page" varStatus="vars" >
					    	<c:if test="${vars.count >= (result.currentPage - 2)&&vars.count <= (result.currentPage + 2)}">  
							  <c:choose>
							   <c:when test="${vars.count eq result.currentPage }">  
							         <li class="active" ><a href="<%=path%>/backlistpost?pageSizeStr=10&pageNum=${vars.count}">
							         	${vars.count}</a></li>      
							   </c:when>
							   <c:otherwise> 
							     	<li><a href="<%=path%>/backlistpost?pageSizeStr=10&pageNum=${vars.count}">
							     		${vars.count}</a></li> 
							   </c:otherwise>
							</c:choose>
							</c:if> 
							
						</c:forEach>
						<c:if test="${result.totalPage > (result.currentPage + 2)}">
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
         <div class="col-md-1">

         </div>
     </div>

     <!-- 特性 -->

     <hr class="feature-divider">

    </div>
</div>
</div>


<footer class="footer">
    <!-- <p class="pull-right"><a href="#top">回到顶部</a></p> -->

    <p class="text-center">&copy; 2016 AndOne </p>
</footer>

</div>
</div>
</div>
</div>
</div>
</div>

<!-- 删除 start -->
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

<script src="<%=path%>/js/jquery-1.11.1.min.js" type="text/javascript"></script>
<script src="<%=path%>/js/bootstrap.min.js" type="text/javascript"></script>
<script type="text/javascript">
	var id;
	$("table tr a").click(function(){
		id = $(this).attr('url');
	});
	
	$("#delete").click(function(){	
        $('#myModa3').modal('hide');
        location.href = '${pageContext.request.contextPath}/deletepost?id=' + id; 
	})
</script>

<!-- 分页js -->
<script type="text/javascript">
// 当前第几页数据
var currentPage = ${result.currentPage};

// 总页数
var totalPage = ${result.totalPage};

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
		submitForm("<%=path%>/backlistpost?pageSizeStr=10&pageNum=1");
		return true;
	}
}

// 下一页
function nextPage(){
	if(currentPage == totalPage){
		alert("已经是最后一页数据");
		return false;
	}else{
		var url = "<%=path%>/backlistpost?pageSizeStr=10&pageNum=" + (currentPage+1);
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
		submitForm("<%=path%>/backlistpost?pageSizeStr=10&pageNum=" + (currentPage-1));
		return true;
	}
}

// 尾页
function lastPage(){
	if(currentPage == totalPage){
		alert("已经是最后一页数据");
		return false;
	}else{
		submitForm("<%=path%>/backlistpost?pageSizeStr=10&pageNum=${result.totalPage}");
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