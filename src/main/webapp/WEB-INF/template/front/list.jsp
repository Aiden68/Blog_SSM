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
                <li ><a href="" tppabs="http://www.flyat.cc/search" onclick="_hmt.push(['_trackEvent', 'search', 'click', 'search'])"><i class="glyphicon glyphicon glyphicon-search"></i>站内搜索</a></li>
                <li ><a href="" tppabs="http://www.flyat.cc/about" onclick="_hmt.push(['_trackEvent', 'about', 'click', 'about'])"><i class="glyphicon glyphicon-info-sign"></i>关于</a></li>
                <li ><a href="" tppabs="http://www.flyat.cc/guestbook" onclick="_hmt.push(['_trackEvent', 'guestbook', 'click', 'guestbook'])"><i class="glyphicon glyphicon-comment"></i>留言</a></li>
                <li ><a href="" tppabs="http://www.flyat.cc/links" onclick="_hmt.push(['_trackEvent', 'links', 'click', 'links'])"><i class="glyphicon glyphicon-link"></i>友情链接</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="" tppabs="http://www.flyat.cc/account/tologin" data-toggle="tooltip" data-placement="bottom" title="个人博客暂不开放注册，只限内测账号登录使用"><i class="glyphicon glyphicon-log-in"></i>登陆</a></li>
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

<div class="container">
    <div class="row">
        <div class="col-sm-8 blog-main">
            <c:forEach items="${page.result}" var = "post">
                <div class="blog-post">
                    <h1 class="blog-post-title">
                        <a href="javascript:;" class="original" title="该文原创发布于本网站，转载请注明出处" data-toggle="tooltip" data-placement="bottom">原</a>
                        <a href="<%=basePath%>detail?id=${post.id}" title="${post.title}" data-toggle="tooltip" data-placement="bottom">${post.title}</a>
                    </h1>
                    <p class="blog-post-meta">
                        <i class="glyphicon glyphicon-time"></i>发表于：<fmt:setLocale value="en"/>< fmt:formatDate value="${post.createTime}"/>&nbsp;&nbsp;
                        <i class="glyphicon glyphicon-edit"></i>作者：AndOne
                    </p>
                    <p class="blog-post-body">
                        ${post.summary}
                    </p>
                    <div class="blog-post-footer">
                        <div class="left">
                            <ul>
                                <li><i class="glyphicon glyphicon-eye-open margin-right-def"></i>阅读(${post.visitor})</li>
                                <li><i class="glyphicon glyphicon-thumbs-up margin-right-def"></i>赞(<num class="lover" data-id="c616faa02281493a83642b6cc16a61a1">0</num>)</li>
                                <li><i class="glyphicon glyphicon-comment margin-right-def"></i>评论(<span id = "sourceId::c616faa02281493a83642b6cc16a61a1" class = "cy_cmt_count" >${post.comSize}</span>)</li>
                            </ul>
                        </div>
                        <div class="right">
                            <a href="<%=basePath%>detail?id=${post.id}" title="${post.title}">继续阅读&raquo;</a>
                        </div>
                    </div>
                </div><!-- /.blog-post -->
            </c:forEach>

            <nav>
                <ul class="pager">
                    <c:choose>
                        <c:when test="${page.currentPage == 1}">
                            <li class="disabled"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="bottom" title="共${page.totalPage}页，已经是第一页了">Prev</a></li>
                        </c:when>
                        <c:otherwise>
                            <li><a href="<%=path%>/list?currentPage=${page.currentPage - 1}" data-toggle="tooltip" data-placement="bottom" title="共${page.totalPage}页，当前第${page.currentPage}页，点击查看第${page.currentPage - 1}页">Prev</a></li>
                        </c:otherwise>
                    </c:choose>
                    <c:choose>
                        <c:when test="${page.currentPage == page.totalPage}">
                            <li class="disabled"><a href="javascript:void(0)" data-toggle="tooltip" data-placement="bottom" title="共${page.totalPage}页，已经是最后一页了">Next</a></li>
                        </c:when>
                        <c:otherwise>
                            <li><a href="<%=path%>/list?currentPage=${page.currentPage + 1}" data-toggle="tooltip" data-placement="bottom" title="共${page.totalPage}页，当前第${page.currentPage}页，点击查看第${page.currentPage + 1}页">Next</a></li>
                        </c:otherwise>
                    </c:choose>
                </ul>
            </nav>
        </div><!-- /.blog-main -->
        <!-- blog-sidebar start -->
    <div class="col-sm-3 col-sm-offset-1 blog-sidebar">
        <%--<div class="sidebar-module sidebar-module-inset">
            <h5 class="bottom-line"><i class="glyphicon glyphicon-home"></i><strong>About</strong></h5>
            <p style="line-height: 27px">
                <iframe width="100%" height="138px" class="share_self"  frameborder="0" scrolling="no" src="http://oksvuq4bs.bkt.clouddn.com/%E6%88%91%E6%9C%89%E7%82%B9%E6%96%B9.jpg"></iframe>
                <span class="label label-warning">Java</span>
                <span class="label label-default">python</span>
                <span class="label label-primary">大数据</span>
                <span class="label label-info">机器学习</span>
                <span class="label label-danger">逗逼</span><br>
            </p>
        </div>--%>
        <div class="sidebar-module">
            <h5 class="bottom-line "><i class="glyphicon glyphicon-search"></i><strong>文章搜索</strong></h5>
            <div class="input-group">
                <input type="text" class="form-control br-none" id="searchInput" value="${key}" name="key" placeholder="没看到想要的？来搜个文章吧！">${key}
                <span class="input-group-btn">
                    <form action="#" method="post" id="form_search">
                        <button class="btn btn-default data-search br-none" type="button" id="key_search" onclick=""><i class="glyphicon glyphicon-search"></i></button>
                    </form>
                </span>
            </div><!-- /input-group -->
            <form id="hiddenForm" action="" method="post">
                <input type="hidden" name="type" id="hiddenType" value="">
                <input type="hidden" name="searchInfo" id="searchInfo" value="">
                <input type="hidden" name="archiveDate" id="archiveDate" value="">
            </form>
        </div>
            <div class="sidebar-module">
                <h5 class="bottom-line "><i class="glyphicon glyphicon-tags"></i><strong>文章标签</strong></h5>
                <div class="tags">
                    <a href="#" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'tag', 'click', 'Linux'])">
                        <span class="btn btn-default btn-xs">Linux</span>
                    </a>
                    <a href="#"  title="15篇文章包含[Java]标签" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'tag', 'click', 'Java'])">
                        <span class="btn btn-default btn-xs">Java</span>
                    </a>
                    <a href="#"  title="9篇文章包含[Spring]标签" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'tag', 'click', 'Spring'])">
                        <span class="btn btn-default btn-xs">Spring</span>
                    </a>
                    <a href="#"  title="17篇文章包含[Spring Boot]标签" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'tag', 'click', 'Spring Boot'])">
                        <span class="btn btn-default btn-xs">Spring Boot</span>
                    </a>
                    <a href="#"  title="7篇文章包含[Maven]标签" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'tag', 'click', 'Maven'])">
                        <span class="btn btn-default btn-xs">Maven</span>
                    </a>
                    <a href="#" title="2篇文章包含[Docker]标签" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'tag', 'click', 'Docker'])">
                        <span class="btn btn-default btn-xs">Docker</span>
                    </a>
                    <a href="#"  title="0篇文章包含[IDE]标签" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'tag', 'click', 'IDE'])">
                        <span class="btn btn-default btn-xs">IDE</span>
                    </a>
                    <a href="#"  title="0篇文章包含[uzip]标签" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'tag', 'click', 'uzip'])">
                        <span class="btn btn-default btn-xs">uzip</span>
                    </a>
                    <a href="#"  title="0篇文章包含[war]标签" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'tag', 'click', 'war'])">
                        <span class="btn btn-default btn-xs">war</span>
                    </a>
                    <a href="#" tppabs="http://www.flyat.cc/tag/10/1" title="10篇文章包含[Shell]标签" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'tag', 'click', 'Shell'])">
                        <span class="btn btn-default btn-xs">Shell</span>
                    </a>
                    <a href="#" tppabs="http://www.flyat.cc/tag/11/1" title="0篇文章包含[Flyat]标签" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'tag', 'click', 'Flyat'])">
                        <span class="btn btn-default btn-xs">Flyat</span>
                    </a>
                    <a href="#" tppabs="http://www.flyat.cc/tag/12/1" title="1篇文章包含[chrome]标签" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'tag', 'click', 'chrome'])">
                        <span class="btn btn-default btn-xs">chrome</span>
                    </a>
                    <a href="#" tppabs="http://www.flyat.cc/tag/13/1" title="1篇文章包含[自动化测试]标签" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'tag', 'click', '自动化测试'])">
                        <span class="btn btn-default btn-xs">自动化测试</span>
                    </a>
                    <a href="#" tppabs="http://www.flyat.cc/tag/14/1" title="3篇文章包含[Git]标签" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'tag', 'click', 'Git'])">
                        <span class="btn btn-default btn-xs">Git</span>
                    </a>
                    <a href="#" tppabs="http://www.flyat.cc/tag/15/1" title="0篇文章包含[Task]标签" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'tag', 'click', 'Task'])">
                        <span class="btn btn-default btn-xs">Task</span>
                    </a>
                    <a href="#" tppabs="http://www.flyat.cc/tag/16/1" title="1篇文章包含[爬虫]标签" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'tag', 'click', '爬虫'])">
                        <span class="btn btn-default btn-xs">爬虫</span>
                    </a>
                    <a href="#" tppabs="http://www.flyat.cc/tag/17/1" title="4篇文章包含[MySQL]标签" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'tag', 'click', 'MySQL'])">
                        <span class="btn btn-default btn-xs">MySQL</span>
                    </a>
                    <a href="#" tppabs="http://www.flyat.cc/tag/18/1" title="4篇文章包含[JS]标签" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'tag', 'click', 'JS'])">
                        <span class="btn btn-default btn-xs">JS</span>
                    </a>
                    <a href="#" tppabs="http://www.flyat.cc/tag/19/1" title="0篇文章包含[正则]标签" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'tag', 'click', '正则'])">
                        <span class="btn btn-default btn-xs">正则</span>
                    </a>
                    <a href="#" tppabs="http://www.flyat.cc/tag/20/1" title="3篇文章包含[Tomcat]标签" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'tag', 'click', 'Tomcat'])">
                        <span class="btn btn-default btn-xs">Tomcat</span>
                    </a>
                    <a href="#" tppabs="http://www.flyat.cc/tag/21/1" title="0篇文章包含[FindBugs]标签" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'tag', 'click', 'FindBugs'])">
                        <span class="btn btn-default btn-xs">FindBugs</span>
                    </a>
                    <a href="#" tppabs="http://www.flyat.cc/tag/22/1" title="0篇文章包含[版本控制]标签" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'tag', 'click', '版本控制'])">
                        <span class="btn btn-default btn-xs">版本控制</span>
                    </a>
                    <a href="#" tppabs="http://www.flyat.cc/tag/23/1" title="4篇文章包含[Nginx]标签" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'tag', 'click', 'Nginx'])">
                        <span class="btn btn-default btn-xs">Nginx</span>
                    </a>
                    <a href="#" tppabs="http://www.flyat.cc/tag/24/1" title="0篇文章包含[Apache]标签" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'tag', 'click', 'Apache'])">
                        <span class="btn btn-default btn-xs">Apache</span>
                    </a>
                    <a href="#" tppabs="http://www.flyat.cc/tag/25/1" title="11篇文章包含[其他]标签" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'tag', 'click', '其他'])">
                        <span class="btn btn-default btn-xs">其他</span>
                    </a>
                </div>
            </div>
        <div class="sidebar-module">
            <h5 class="bottom-line "><i class="glyphicon glyphicon-list"></i><strong>归档目录</strong></h5>
            <ol class="list-unstyled archiveOl">
                <c:forEach items="${statics}" var="sta">
                <li>
                    <a title="${sta.year}年${sta.month}月共发表了${sta.total}篇文章" data-toggle="tooltip" data-placement="bottom" date-archive="2017-04">${sta.year}年${sta.month}月</a>
                    &nbsp;
                    <span class="gray">(${sta.total})</span>
                </li>
                </c:forEach>
            </ol>
        </div>
        <div class="sidebar-module">
            <h5 class="bottom-line "><i class="glyphicon glyphicon-leaf"></i><strong>站长推荐</strong></h5>
            <ol class="list-unstyled">
                <li class="bottom-line">
                    <a href="javascript:if(confirm('http://www.flyat.cc/article/c616faa02281493a83642b6cc16a61a1  \n\n���ļ�δ�� Teleport Pro ���أ���Ϊ ����һ��λ���ѱ�վ����������ų���׼���������Ե�·����ַ��(Teleport Pro ���ԶԸ�ѡ��������ã�����ġ��������ԡ�-������淶��)  \n\n����Ҫ�ӷ�����������?'))window.location='http://www.flyat.cc/article/c616faa02281493a83642b6cc16a61a1'" tppabs="http://www.flyat.cc/article/c616faa02281493a83642b6cc16a61a1" title="教你八步提高网站的访问速度" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'top', 'click', '教你八步提高网站的访问速度'])">
                        <i class="glyphicon glyphicon-leaf margin-right-def"></i>
                    </a>
                    <p class="slidebar-topinfo">
                        <span title="459人已经阅读" data-toggle="tooltip" data-placement="bottom" class="margin-right-def"><i class="glyphicon glyphicon-eye-open margin-right-def"></i>阅读(459)</span>
                        <span data-toggle="tooltip" data-placement="bottom" title="0人赞了这篇文章" class="margin-right-def"><i class="glyphicon glyphicon-thumbs-up margin-right-def"></i>赞(<num class="lover" data-id="c616faa02281493a83642b6cc16a61a1">0</num>)</span>
                        <span data-toggle="tooltip" data-placement="bottom" title="0人参与评论" class="margin-right-def"><i class="glyphicon glyphicon-comment margin-right-def"></i>评论(<num class="duoshuoComments" data-id="c616faa02281493a83642b6cc16a61a1">0</num>)</span>
                    </p>
                </li>
                <li class="bottom-line">
                    <a href="javascript:if(confirm('http://www.flyat.cc/article/5a5a7818553344f9a59e13da96c029ac  \n\n���ļ�δ�� Teleport Pro ���أ���Ϊ ����һ��λ���ѱ�վ����������ų���׼���������Ե�·����ַ��(Teleport Pro ���ԶԸ�ѡ��������ã�����ġ��������ԡ�-������淶��)  \n\n����Ҫ�ӷ�����������?'))window.location='http://www.flyat.cc/article/5a5a7818553344f9a59e13da96c029ac'" tppabs="http://www.flyat.cc/article/5a5a7818553344f9a59e13da96c029ac" title="【超全】开发常用工具" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'top', 'click', '【超全】开发常用工具'])">
                        <i class="glyphicon glyphicon-leaf margin-right-def"></i>
                    </a>
                    <p class="slidebar-topinfo">
                        <span title="202人已经阅读" data-toggle="tooltip" data-placement="bottom" class="margin-right-def"><i class="glyphicon glyphicon-eye-open margin-right-def"></i>阅读(202)</span>
                        <span data-toggle="tooltip" data-placement="bottom" title="0人赞了这篇文章" class="margin-right-def"><i class="glyphicon glyphicon-thumbs-up margin-right-def"></i>赞(<num class="lover" data-id="5a5a7818553344f9a59e13da96c029ac">0</num>)</span>
                        <span data-toggle="tooltip" data-placement="bottom" title="0人参与评论" class="margin-right-def"><i class="glyphicon glyphicon-comment margin-right-def"></i>评论(<num class="duoshuoComments" data-id="5a5a7818553344f9a59e13da96c029ac">0</num>)</span>
                    </p>
                </li>
            </ol>
        </div>
        <div class="sidebar-module">
            <h5 class="bottom-line "><i class="glyphicon glyphicon-link"></i><strong>友情链接</strong></h5>
            <ul class="links" style="margin-left: -24px;">
                        <li title="Flyat - 一个程序员的个人博客。心之所向，无所不能。" data-toggle="tooltip" data-placement="bottom" >
                            <div>
                                <a href="index.htm" tppabs="http://www.flyat.cc/" target="_blank">
                                    <i class="glyphicon glyphicon-link"></i>Flyat
                                </a>
                            </div>
                        </li>
                        <li title="高山流水遇知音，十面埋伏断弦琴。平沙落雁雁迷途，渔樵问答答所问" data-toggle="tooltip" data-placement="bottom" >
                            <div>
                                <a href="javascript:if(confirm('http://music.flyat.cc/index.html  \n\n���ļ�δ�� Teleport Pro ���أ���Ϊ ��λ����ʼ��ַ�����õı߽���������·���С�  \n\n����Ҫ�ӷ�����������?'))window.location='http://music.flyat.cc/index.html'" tppabs="http://music.flyat.cc/index.html" target="_blank">
                                    <i class="glyphicon glyphicon-link"></i>我的音乐馆
                                </a>
                            </div>
                        </li>
                        <li title="博客大全" data-toggle="tooltip" data-placement="bottom" >
                            <div>
                                <a href="javascript:if(confirm('http://daohang.lusongsong.com/  \n\n���ļ�δ�� Teleport Pro ���أ���Ϊ ��λ����ʼ��ַ�����õı߽���������·���С�  \n\n����Ҫ�ӷ�����������?'))window.location='http://daohang.lusongsong.com/'" tppabs="http://daohang.lusongsong.com/" target="_blank">
                                    <i class="glyphicon glyphicon-link"></i>博客大全
                                </a>
                            </div>
                        </li>
                        <li title="便宜年付VPS，性价比较高" data-toggle="tooltip" data-placement="bottom" >
                            <div>
                                <a href="javascript:if(confirm('http://www.banwagong.me/  \n\n���ļ�δ�� Teleport Pro ���أ���Ϊ ��λ����ʼ��ַ�����õı߽���������·���С�  \n\n����Ҫ�ӷ�����������?'))window.location='http://www.banwagong.me/'" tppabs="http://www.banwagong.me/" target="_blank">
                                    <i class="glyphicon glyphicon-link"></i>搬瓦工VPS
                                </a>
                            </div>
                        </li>
                        <li title="一个专注于发表原创文章的小清新博客" data-toggle="tooltip" data-placement="bottom" >
                            <div>
                                <a href="javascript:if(confirm('http://www.yiyeti.cc/  \n\n���ļ�δ�� Teleport Pro ���أ���Ϊ ��λ����ʼ��ַ�����õı߽���������·���С�  \n\n����Ҫ�ӷ�����������?'))window.location='http://www.yiyeti.cc/'" tppabs="http://www.yiyeti.cc/" target="_blank">
                                    <i class="glyphicon glyphicon-link"></i>一夜涕的博客
                                </a>
                            </div>
                        </li>
                        <li title="态度改变生活" data-toggle="tooltip" data-placement="bottom" >
                            <div>
                                <a href="javascript:if(confirm('http://www.bigblog.cn/  \n\n���ļ�δ�� Teleport Pro ���أ���Ϊ ��λ����ʼ��ַ�����õı߽���������·���С�  \n\n����Ҫ�ӷ�����������?'))window.location='http://www.bigblog.cn/'" tppabs="http://www.bigblog.cn/" target="_blank">
                                    <i class="glyphicon glyphicon-link"></i>大博客
                                </a>
                            </div>
                        </li>
                        <li title="做更好的自己" data-toggle="tooltip" data-placement="bottom" >
                            <div>
                                <a href="javascript:if(confirm('http://5iblog.com/  \n\n���ļ�δ�� Teleport Pro ���أ���Ϊ ��λ����ʼ��ַ�����õı߽���������·���С�  \n\n����Ҫ�ӷ�����������?'))window.location='http://5iblog.com/'" tppabs="http://5iblog.com/" target="_blank">
                                    <i class="glyphicon glyphicon-link"></i>做更好的自己
                                </a>
                            </div>
                        </li>
                        <li title="出售cc、top、new、vip等域名，更有精品域名。" data-toggle="tooltip" data-placement="bottom" >
                            <div>
                                <a href="javascript:if(confirm('http://www.flyat.cc/domain  \n\n���ļ�δ�� Teleport Pro ���أ���Ϊ ����һ��λ���ѱ�վ����������ų���׼���������Ե�·����ַ��(Teleport Pro ���ԶԸ�ѡ��������ã�����ġ��������ԡ�-������淶��)  \n\n����Ҫ�ӷ�����������?'))window.location='http://www.flyat.cc/domain'" tppabs="http://www.flyat.cc/domain" target="_blank">
                                    <i class="glyphicon glyphicon-link"></i>域名出售
                                </a>
                            </div>
                        </li>
                        <li title="acejs，一个码农的学习日记" data-toggle="tooltip" data-placement="bottom" >
                            <div>
                                <a href="javascript:if(confirm('http://acejs.cn/  \n\n���ļ�δ�� Teleport Pro ���أ���Ϊ ��λ����ʼ��ַ�����õı߽���������·���С�  \n\n����Ҫ�ӷ�����������?'))window.location='http://acejs.cn/'" tppabs="http://acejs.cn/" target="_blank">
                                    <i class="glyphicon glyphicon-link"></i>acejs
                                </a>
                            </div>
                        </li>
            </ul>
        </div>
        <div class="clear"></div>
        <div class="sidebar-module">
            <h5 class="bottom-line "><i class="glyphicon glyphicon-share-alt"></i><strong>网站信息</strong></h5>
            <ul class="ul-default">
                <li>最后更新：2017/04/14</li>
                <li>运行天数：170天</li>
            </ul>
        </div>
    </div><!-- /.blog-sidebar -->        <!-- blog-sidebar end -->
    </div><!-- /.row -->

</div><!-- /.container -->
<footer class="blog-footer">
    <p>
        <a href="https://github.com/Aiden68" target="_blank" title="github" data-toggle="tooltip" data-placement="top"><i class="fa fa-github fa-2x"></i>GitHub</a>
    </p>
    <p>
        Copyright&copy; 2016-2017 andonj.cn <a href="" tppabs="http://www.miitbeian.gov.cn/publish/query/indexFirst.action" target="_blank"></a> Powered by AndOne.
    </p>
</footer>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="../../../static/js/jquery.min.js" tppabs="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script src="../../../static/js/bootstrap.min.js" tppabs="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
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
<script>
    $('#key_search').click(function() {

        var key = $('input[name="key"]').val();

        $('#form_search').attr('action', '<%=basePath%>list?key=' + key);
        $('#form_search').attr('method', 'post');
        $('#form_search').submit();
        <%--if ($('#image_name').val() == '' || $('#image').val() == '') {--%>
        <%--} else {--%>
            <%--$('#form').attr('action', '${pageContext.request.contextPath}' + '/ImageAction?type=1');--%>
            <%--$('#form').attr('enctype', 'multipart/form-data');--%>
            <%--$('#form').attr('method', 'post');--%>
            <%--$('#form').submit();--%>
        <%--}--%>
    });
</script>
</body>
</html>
