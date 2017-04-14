<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%  String path = request.getContextPath(); 
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/reset.css">
	<link rel="stylesheet" type="text/css" href="<%=path %>/css/addtion.css">
	<link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet">
	<link href="<%=path %>/css/pagination.css" rel="stylesheet">	
    <link href="<%=path %>/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-default">
	  <div class="container-fluid">
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="<%=basePath %>">AndOne的博客</a>
	    </div>
	
	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav">
	        <li ><a href="#">&nbsp; <span class="sr-only">(current)</span></a></li>
	
	      </ul>
	      <form action="<%=path %>/index" class="navbar-form navbar-left">
	        <div class="form-group">
	          <input type="text" class="form-control" name="search" placeholder="Search">
	        </div>
	        <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
	      </form>
	      <ul class="nav navbar-nav navbar-right">
	        <li><a class="active" href="#">首页</a></li>
	        <li><a  href="<%=path %>/image?type=3">图册</a></li>
			<li id="sidebar_trigger"><a  href="#">分类</a></li>
	      </ul>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>
	<div class="container" style="min-height: 100%;">
        <div class="col-md-2">
            
        </div>
        <div  class="col-md-8">
        	
        	<form action="<%=path %>/index?pageNum=new_page_index+1" id="postForm" method="post">
			<c:forEach items="${result.resultList}" var="post">
			<article class="post post-type-normal" style="opacity: 1; display: block; transform: translateY(0px);">
					<header class="post-header">
						<h1 style="text-align: center;">
							<a style="font-weight: 400;
								font-family: 
								display: inline-block;
								position: relative;
								color: #555;
								word-break: break-word;
								border-bottom: none;
								line-height: 1.2;
								vertical-align: top;
								font-size: 25px;
								
								font-family: 'Lato', 'PingFang SC', 'Microsoft YaHei', 'sans-serif';" 
								href="<%=path %>/postdetail?id=${post.id}" class="mytitle">&nbsp;
							${post.title }
							</a>
						</h1>
						<div class="mypost-meta">
							<span style="text-align: center;" class="post-time">
								<span >
									<i class="fa fa-calendar-o"></i>
								</span>
								<span>< fmt:setLocale value="en"/> < fmt:formatDate value="${post.createtime}"/> </span>
							</span>


							<span >
								&nbsp; | &nbsp;
								<span class="post-meta-item-icon">
									<i class="fa fa-folder-o"></i>
								</span>
								<span >In</span>
								<span >
									<a href="<%=path %>/list?catName=${post.catname}" rel="index">
										<span>${post.catname}</span>
									</a>
								</span>
							</span>
							<span class="post-comments-count">
								&nbsp; | &nbsp;
								<span class="glyphicon glyphicon-edit" style="color: gray" aria-hidden="true"></span>
								<a href="<%=path %>/postdetail?id=${post.id}#comment_id" >
									<span >${post.comsize} 条评论</span>
								</a>
							</span>
							<span >
								&nbsp; | &nbsp;
								<span class="post-meta-item-icon">
									<i class="fa fa-eye"></i>
								</span>
								<span>visitors </span>
								<span>${post.visitor}</span>
							</span>
						</div>
					</header>
					<div style="margin-top: 0px;
					padding-top: 0;font-family: 'Lato', 'PingFang SC', 'Microsoft YaHei', 'sans-serif';" 
					class="post-body" itemprop="articleBody">
						<p>${post.summary }</p>
						<div class="post-more-link">
						<a onMouseIn="this.style.backgroundColor=''" class="btn" href="<%=path %>/postdetail?id=${post.id}">
							Read more »
						</a>
						</div>
					</div>
					<hr>
					<footer class="post-footer">
						<div class="post-eof"></div>

					</footer>
				</article>
			
			</c:forEach>
            <div id="News-Pagination" align="center"></div>
            </form>
            
        </div>
        
        <div class="col-md-2">
            
        </div>
    </div>
	<footer class="footer">
		<ul class="share-group">
			<li><i class="fa fa-weixin fa-2x"></i>微信</li>
			<li><i class="fa fa-qq fa-2x"></i>QQ</li>
			<li><i class="fa fa-weibo fa-2x"></i>新浪微博</li>
			<a href="https://github.com/Aiden68" target="_blank"><li><i class="fa fa-github fa-2x"></i>GitHub</li></a>
			<li><i class="fa  fa-facebook fa-2x"></i>FaceBook</li>
		</ul>
		<div class="copy">
			©AndOne 2016 10-06
		</div>
	</footer>

<div class="mask"></div>
<div id="sidebar">
	<ul>
		<li><a class="active" href="<%=path %>/list">所有文章</a></li>
		<c:forEach items="${catList}" var="cat">
			<li><a href="<%=path%>/list?catName=${cat.catname }">${cat.catname }</a></li>
		</c:forEach>
	</ul>
</div>
<button class="back-to-top"><i class="fa fa-arrow-up"></i></button>

<script src="<%=path %>/js/jquery-1.11.1.min.js"></script>
<script src="<%=path %>/js/bootstrap.min.js"></script>
<script src="<%=path %>/js/main.js"></script>
<script src="<%=path %>/js/jquery.pagination.js"></script>

<script type="text/javascript">
// 点击分页按钮以后触发的动作
function handlePaginationClick(new_page_index, pagination_container) {
    $("#postForm").attr("action", "<%=path %>/list?pageNum=" + (new_page_index+1));
    $("#postForm").submit();
    return false;
}

$(function(){
	$("#News-Pagination").pagination(${result.totalSize}, {
        items_per_page:${result.pageSize}, // 每页显示多少条记录
        current_page:${result.currentPage} - 1, // 当前显示第几页数据
        num_display_entries:8, // 分页显示的条目数
        next_text:"next",
        prev_text:"prev",
        num_edge_entries:2, // 连接分页主体，显示的条目数
        callback:handlePaginationClick
	});
	
});
</script>
</body>
</html>