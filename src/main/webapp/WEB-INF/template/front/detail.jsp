<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../common/head.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="andone">
    <meta name="description" content="1.CDN（http://www.bootcdn.cn/）CDN全称ContentDeliveryNetwork，即内容分发网络。其基本思路是尽可能避开互联网上有可能影响数据传输速度和稳定性的瓶颈和环">
    <meta name="keywords" content="${post.title}">
    <title>${post.title}</title>

    <%--<link rel="canonical" href="http://www.flyat.cc/article/c616faa02281493a83642b6cc16a61a1" />--%>
    <link href="../static/css/jquery-confirm.min.css" rel="stylesheet" type="text/css" />
    <link href="../static/css/jquery.fancybox.css"  rel="stylesheet">
    <%--<link rel="icon" href="http://ofndwaoqp.bkt.clouddn.com/website/img/favicon.ico">--%>
    <!-- Bootstrap core CSS. From bootcdn -->
    <link href="../static/css/bootstrap.min.css" rel="stylesheet">
    <link href="../static/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">
    <%--<!-- Custom styles for this template. -->--%>
    <link href="../static/css/flyat.min.css-d=v2.3.css" tppabs="http://cdn.flyat.cc/css/flyat.min.css?d=v2.3" rel="stylesheet">
    <%--<!--[if lt IE 9]>--%>
    <%--<script src="../oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js" tppabs="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>--%>
    <%--<script src="../oss.maxcdn.com/respond/1.4.2/respond.min.js" tppabs="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>--%>
    <%--<![endif]-->--%>

     <link rel="stylesheet" type="text/css" href="../static/ueditor/third-party/SyntaxHighlighter/shCoreDefault.css">
</head>
<body>
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
                <li ><a href="#"
                >首页</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">文章分类 <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a></a></li>
                        <li><a></a></li>
                        <li><a></a></li>
                    </ul>
                </li>
                <li ><a href="#" ><i class="glyphicon glyphicon glyphicon-search"></i>站内搜索</a></li>
                <li ><a href="#" ><i class="glyphicon glyphicon-info-sign"></i>关于</a></li>
                <li ><a href="#" ><i class="glyphicon glyphicon-comment"></i>留言</a></li>
                <li ><a href="#" ><i class="glyphicon glyphicon-link"></i>友情链接</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#" title="个人博客暂不开放注册，只限内测账号登录使用"><i class="glyphicon glyphicon-log-in"></i>登陆</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav><!-- header end -->
<div class="container">
    <div class="row">
        <div class="col-sm-8 blog-main">
            <ol class="breadcrumb">
                <li><a href="<%=basePath%>" title="点击返回AndOne首页" data-toggle="tooltip" data-placement="bottom">首页</a></li>
                <li class="active"><a a href="<%=basePath%>list">文章列表页</a></li>
                <li class="active">文章详情页</li>
            </ol>
            <div class="blog-info">
                <h1 class="blog-info-title">
                    <a href="#" class="original" title="该文原创发布于本网站，转载请注明出处" data-toggle="tooltip" data-placement="bottom">原</a><strong>${post.title}</strong>
                </h1>
                <div class="blog-info-meta">
                    <div class="left">
                        发表于：< fmt:setLocale value="en"/>< fmt:formatDate value="${post.createTime}"/>&nbsp;&nbsp;
                        分类：<a href="#" title="点击查看 ${post.catName}分类 的文章">${post.catName}</a>
                    </div>
                    <div class="right">
                        <ul>
                            <li><i class="glyphicon glyphicon-eye-open margin-right-def"></i>阅读(<num>${post.visitor}</num>)</li>
                            <li><i class="glyphicon glyphicon-thumbs-up margin-right-def"></i>赞(<num class="lover" data-id="c616faa02281493a83642b6cc16a61a1">0</num>)</li>
                            <li><a href="#SOHUCS" id="ds-comment"><i class="glyphicon glyphicon-comment margin-right-def"></i>评论(<span id="changyan_count_unit"></span>)</a></li>
                        </ul>
                    </div>
                </div>
                <p>
                </p>
                <div class="blog-info-body">
                    ${post.content}
                </div>
                <div class="blockquote-warn" style="position: relative;line-height: 25px;overflow: hidden;">
                    <ul class="ul-default">
                        <li>
                            <i class="glyphicon glyphicon-tags tag"></i>本文标签：
                            <a href="#" tppabs="http://www.flyat.cc/tag/2/1" title="Java标签" data-toggle="tooltip" data-placement="bottom">
                                <i class="glyphicon glyphicon-tag"></i>Java
                            </a>
                            <a href="#" tppabs="http://www.flyat.cc/tag/23/1" title="Nginx标签" data-toggle="tooltip" data-placement="bottom">
                                <i class="glyphicon glyphicon-tag"></i>Nginx
                            </a>
                            <a href="#" tppabs="http://www.flyat.cc/tag/18/1" title="JS标签" data-toggle="tooltip" data-placement="bottom">
                                <i class="glyphicon glyphicon-tag"></i>JS
                            </a>
                            <a href="#" tppabs="http://www.flyat.cc/tag/20/1" title="Tomcat标签" data-toggle="tooltip" data-placement="bottom">
                                <i class="glyphicon glyphicon-tag"></i>Tomcat
                            </a>
                        </li>
                        <li>
                            <i class="glyphicon glyphicon-info-sign tag"></i>本文遵循
                            <a rel="license" href="#" tppabs="https://creativecommons.org/licenses/by-nc/3.0/deed.zh" title="知识共享许可协议" data-toggle="tooltip" data-placement="bottom" target="_blank">
                                <strong>知识共享许可协议</strong>
                            </a>
                            原创发布于
                            <a href="<%=basePath%>" target="_blank" title="Flyat" data-toggle="tooltip" data-placement="bottom">
                                <strong>andonej.cn</strong>
                            </a>
                            ，转载请注明出处，谢谢合作！
                        </li>
                        <li><i class="glyphicon glyphicon-book tag"></i><span class="articleTitle">${post.title}</span></li>
                        <li><i class="glyphicon glyphicon-link tag"></i><span class="articlePath">网址：www.andonej.cn</span></li>
                    </ul>

                    <div class="article-qrcode">
                        <a href="#" tppabs="http://ofndwaoqp.bkt.clouddn.com/flyat/article/20170202143755141.jpg" title="${post.title}" rel="group" class="showImage">
                            <%--<img src="../ofndwaoqp.bkt.clouddn.com/flyat/article/20170202143755141.jpg" tppabs="http://ofndwaoqp.bkt.clouddn.com/flyat/article/20170202143755141.jpg" width="100" height="100" alt="${post.title}">--%>
                        </a>
                    </div>
                </div>

            </div><!-- /.blog-info -->
            <div>
                <dd >
                    <li class="prev">上一篇：
                        <a href="#" tppabs="http://www.flyat.cc/article/120cd0ed892042e99f0d185ec12af968" title="SpringTask中cron表达式整理记录" data-toggle="tooltip" data-placement="bottom">
                            SpringTask中cron表达式
                        </a>
                    </li>
                    <li class="next">下一篇：
                        <a href="#" tppabs="http://www.flyat.cc/article/c7bb58dbbff4423fb842a3bfb176d3b6" title="vi代码高亮" data-toggle="tooltip" data-placement="bottom">
                            vi代码高亮
                        </a>
                    </li>
                </dd>
            </div>
            <div style="clear:both"></div>
            <div style="">
                <h4 class="bottom-line"><i class="glyphicon glyphicon-fire margin-right-def"></i><strong>热门推荐</strong></h4>
                <ul class="list-unstyled">
                    <%--<li class="line-li">
                        <div class="line-container">
                            <div class="line-left"><img src="../ofndwaoqp.bkt.clouddn.com/website/img/favicon.ico" tppabs="http://ofndwaoqp.bkt.clouddn.com/website/img/favicon.ico" width="50" height="50"/></div>
                            <div class="line-right">
                                <p>
                                    <a href="#" tppabs="http://www.flyat.cc/article/c616faa02281493a83642b6cc16a61a1" title="466人浏览了《${post.title}》" data-toggle="tooltip" data-placement="bottom">
                                        <i class="glyphicon glyphicon-fire red margin-right-def"></i>

                                        ${post.title}

                                    </a>
                                </p>
                                <p><i class="glyphicon glyphicon-eye-open margin-right-def"></i>阅读(${visitor})&nbsp;&nbsp;&nbsp;&nbsp;<i class="glyphicon glyphicon-time margin-right-def"></i>发表于(2017-02-20)</p>
                            </div>
                        </div>
                    </li>--%>

                </ul>
                <div style="clear:both"></div>
                <div class="bottom-line"></div>
            </div>
            <div style="clear:both"></div>
            <h4 class="bottom-line" id="commentId"><i class="glyphicon glyphicon-edit margin-right-def"></i><strong>发表评论</strong></h4>
            <%--<div id="SOHUCS" sid="c616faa02281493a83642b6cc16a61a1" ></div>--%>
            <c:if test="${empty post.commentList }">
                <h3 style="padding-top: 10px">暂无评论</h3>
            </c:if>
            <c:if test="${not empty post.commentList }">
                <h3 style="padding-top: 10px">评论列表&nbsp;&nbsp;&nbsp;&nbsp;${comSize }条</h3>
            </c:if>
            <hr>
            <div style="padding-top: 10px;padding-left: 10px;padding-right: 10px">
                <c:if test="${not empty post.commentList }">
                    <c:forEach items="${post.commentList }" var="com" varStatus="vs">
                        <span style="color:black;width: 40px">${vs.count }楼</span>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="glyphicon glyphicon-user" style="color: gray ;width:150px" aria-hidden="true">&nbsp;${com.name }</span>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="glyphicon glyphicon-envelope" style="color: gray;width:300px" aria-hidden="true">&nbsp;${com.email }</span>
                        <div style="font-size:16px;padding: 20px 50px 10px 45px;">${com.content }</div>
                        <div style="color:gray;float: right; padding: 0px 10px 0px 0px">
                            <i>评论于<fmt:setLocale value="en"/>< fmt:formatDate value="${com.createTime}"/></i>
                        </div>
                        <hr>
                    </c:forEach>
                </c:if>
            </div>
            <form id="comment_id" action="<%=basePath%>/addComment?id=${post.id}&comSize=${comSize }" method="post" novalidate="novalidate">
                <fieldset>
                    <legend style="font-family: 'Lato', 'PingFang SC', Microsoft YaHei, sans-serif">说点什么吧...</legend>
                    <input value="65" type="hidden" name="comment.blog_id">
                    <div class="form-inline">
                        <div class="form-group col-lg-offset-1">
                            <label style="font-size: 15px;width: 60px;">昵称：</label>
                            <input style="width:200px;font-size: 15px" type="text" minlength="4" maxlength="30" class="form-control" name="name" required="" >
                        </div>
                    </div>
                    <div class="form-inline">
                        <div class="form-group  col-lg-offset-1">
                            <label style="font-size: 15px;width: 60px;padding-top: 20px">邮箱：</label>
                            <input placeholder="可不填" style="width:250px;font-size: 15px" type="email" class="form-control" name="${comment.email}"  aria-invalid="true">
                            <!-- <label id="comEmail" class="error" for="comEmail">这是必填字段</label> -->
                        </div>
                    </div>
                    <div class="form-inline" style="padding-top: 20px">
                        <div class="form-group  col-lg-offset-1">
                            <label style="font-size: 15px;width: 60px">内容：</label>
                            <textarea name="content" id="comContent" style="width: 500px" class="form-control" rows="4" required=""></textarea>
                        </div>
                    </div>

                    <div class="col-lg-offset-1" style="text-align:center; padding-top: 20px;padding-left: 60px;padding-bottom: 15px">
                        <button type="submit" style="width: 200px;text-align: center" class="btn btn-info">评论</button>
                    </div>
                </fieldset>
            </form>

        </div><!-- /.blog-main -->
        <!-- blog-sidebar start -->
        <div class="col-sm-3 col-sm-offset-1 blog-sidebar">
            <div class="sidebar-module">
                <h5 class="bottom-line "><i class="glyphicon glyphicon-search"></i><strong>文章搜索</strong></h5>
                <div class="input-group">
                    <input type="text" class="form-control br-none" id="searchInput" value="" placeholder="没看到想要的？来搜个文章吧！">
                    <span class="input-group-btn">
                    <button class="btn btn-default data-search br-none" type="button" onclick="_hmt.push(['_trackEvent', 'search', 'click', 'search'])"><i class="glyphicon glyphicon-search"></i></button>
                </span>
                </div><!-- /input-group -->
                <form id="hiddenForm" action="javascript:if(confirm('http://www.flyat.cc/index/1?type=&searchInfo=&archiveDate=  \n\n���ļ�δ�� Teleport Pro ���أ���Ϊ ����һ��λ���ѱ�վ����������ų���׼���������Ե�·����ַ��(Teleport Pro ���ԶԸ�ѡ��������ã�����ġ��������ԡ�-������淶��)  \n\n����Ҫ�ӷ�����������?'))window.location='http://www.flyat.cc/index/1?type=&searchInfo=&archiveDate='" tppabs="http://www.flyat.cc/index/1?type=&searchInfo=&archiveDate=" method="post">
                    <input type="hidden" name="type" id="hiddenType" value="">
                    <input type="hidden" name="searchInfo" id="searchInfo" value="">
                    <input type="hidden" name="archiveDate" id="archiveDate" value="">
                </form>
            </div>
            <div class="sidebar-module">
                <h5 class="bottom-line "><i class="glyphicon glyphicon-tags"></i><strong>文章标签</strong></h5>
                <div class="tags">
                    <a href="#" tppabs="http://www.flyat.cc/tag/1/1" title="12篇文章包含[Linux]标签" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'tag', 'click', 'Linux'])">
                        <span class="btn btn-default btn-xs">Linux</span>
                    </a>
                    <a href="#" tppabs="http://www.flyat.cc/tag/2/1" title="15篇文章包含[Java]标签" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'tag', 'click', 'Java'])">
                        <span class="btn btn-default btn-xs">Java</span>
                    </a>
                    <a href="#" tppabs="http://www.flyat.cc/tag/3/1" title="9篇文章包含[Spring]标签" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'tag', 'click', 'Spring'])">
                        <span class="btn btn-default btn-xs">Spring</span>
                    </a>
                    <a href="#" tppabs="http://www.flyat.cc/tag/4/1" title="17篇文章包含[Spring Boot]标签" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'tag', 'click', 'Spring Boot'])">
                        <span class="btn btn-default btn-xs">Spring Boot</span>
                    </a>
                    <a href="#" tppabs="http://www.flyat.cc/tag/5/1" title="7篇文章包含[Maven]标签" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'tag', 'click', 'Maven'])">
                        <span class="btn btn-default btn-xs">Maven</span>
                    </a>
                    <a href="#" tppabs="http://www.flyat.cc/tag/6/1" title="2篇文章包含[Docker]标签" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'tag', 'click', 'Docker'])">
                        <span class="btn btn-default btn-xs">Docker</span>
                    </a>
                    <a href="#" tppabs="http://www.flyat.cc/tag/7/1" title="0篇文章包含[IDE]标签" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'tag', 'click', 'IDE'])">
                        <span class="btn btn-default btn-xs">IDE</span>
                    </a>
                    <a href="#" tppabs="http://www.flyat.cc/tag/8/1" title="0篇文章包含[uzip]标签" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'tag', 'click', 'uzip'])">
                        <span class="btn btn-default btn-xs">uzip</span>
                    </a>
                    <a href="#" tppabs="http://www.flyat.cc/tag/9/1" title="0篇文章包含[war]标签" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'tag', 'click', 'war'])">
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
                    <li>
                        <a title="2017年04月共发表了2篇文章" data-toggle="tooltip" data-placement="bottom" date-archive="2017-04">2017年04月</a>
                        &nbsp;
                        <span class="gray">(2)</span>
                    </li>
                    <li>
                        <a title="2017年03月共发表了16篇文章" data-toggle="tooltip" data-placement="bottom" date-archive="2017-03">2017年03月</a>
                        &nbsp;
                        <span class="gray">(16)</span>
                    </li>
                    <li>
                        <a title="2017年02月共发表了7篇文章" data-toggle="tooltip" data-placement="bottom" date-archive="2017-02">2017年02月</a>
                        &nbsp;
                        <span class="gray">(7)</span>
                    </li>
                    <li>
                        <a title="2017年01月共发表了5篇文章" data-toggle="tooltip" data-placement="bottom" date-archive="2017-01">2017年01月</a>
                        &nbsp;
                        <span class="gray">(5)</span>
                    </li>
                    <li>
                        <a title="2016年12月共发表了17篇文章" data-toggle="tooltip" data-placement="bottom" date-archive="2016-12">2016年12月</a>
                        &nbsp;
                        <span class="gray">(17)</span>
                    </li>
                    <li>
                        <a title="2016年11月共发表了16篇文章" data-toggle="tooltip" data-placement="bottom" date-archive="2016-11">2016年11月</a>
                        &nbsp;
                        <span class="gray">(16)</span>
                    </li>
                </ol>
            </div>
            <div class="sidebar-module">
                <h5 class="bottom-line "><i class="glyphicon glyphicon-leaf"></i><strong>站长推荐</strong></h5>
                <ol class="list-unstyled">
                    <li class="bottom-line">
                        <a href="#" title="${post.title}" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'top', 'click', '${post.title}'])">
                            <i class="glyphicon glyphicon-leaf margin-right-def"></i>${post.title}
                        </a>
                        <p class="slidebar-topinfo">
                            <span title="459人已经阅读" data-toggle="tooltip" data-placement="bottom" class="margin-right-def"><i class="glyphicon glyphicon-eye-open margin-right-def"></i>阅读(459)</span>
                            <span data-toggle="tooltip" data-placement="bottom" title="0人赞了这篇文章" class="margin-right-def"><i class="glyphicon glyphicon-thumbs-up margin-right-def"></i>赞(<num class="lover" data-id="c616faa02281493a83642b6cc16a61a1">0</num>)</span>
                            <span data-toggle="tooltip" data-placement="bottom" title="0人参与评论" class="margin-right-def"><i class="glyphicon glyphicon-comment margin-right-def"></i>评论(<num class="duoshuoComments" data-id="c616faa02281493a83642b6cc16a61a1">0</num>)</span>
                        </p>
                    </li>
                    <li class="bottom-line">
                        <a href="#" tppabs="http://www.flyat.cc/article/5a5a7818553344f9a59e13da96c029ac" title="【超全】开发常用工具" data-toggle="tooltip" data-placement="bottom" onclick="_hmt.push(['_trackEvent', 'top', 'click', '【超全】开发常用工具'])">
                            <i class="glyphicon glyphicon-leaf margin-right-def"></i>【超全】开发常用工具
                        </a>
                        <p class="slidebar-topinfo">
                            <span title="203人已经阅读" data-toggle="tooltip" data-placement="bottom" class="margin-right-def"><i class="glyphicon glyphicon-eye-open margin-right-def"></i>阅读(203)</span>
                            <span data-toggle="tooltip" data-placement="bottom" title="0人赞了这篇文章" class="margin-right-def"><i class="glyphicon glyphicon-thumbs-up margin-right-def"></i>赞(<num class="lover" data-id="5a5a7818553344f9a59e13da96c029ac">0</num>)</span>
                            <span data-toggle="tooltip" data-placement="bottom" title="0人参与评论" class="margin-right-def"><i class="glyphicon glyphicon-comment margin-right-def"></i>评论(<num class="duoshuoComments" data-id="5a5a7818553344f9a59e13da96c029ac">0</num>)</span>
                        </p>
                    </li>
                </ol>
            </div>
            <div class="sidebar-module">
                <h5 class="bottom-line "><i class="glyphicon glyphicon-link"></i><strong>友情链接</strong></h5>
                <ul class="links" style="margin-left: -24px;">
                    <li title="AndOne的个人博客" data-toggle="tooltip" data-placement="bottom" >
                        <div>
                            <a href="#"  target="_blank">
                                <i class="glyphicon glyphicon-link"></i>AndOne
                            </a>
                        </div>
                    </li>
                    <li title="高山流水遇知音，十面埋伏断弦琴。平沙落雁雁迷途，渔樵问答答所问" data-toggle="tooltip" data-placement="bottom" >
                        <div>
                            <a href="#"  target="_blank">
                                <i class="glyphicon glyphicon-link"></i>我的音乐馆
                            </a>
                        </div>
                    </li>
                    <li title="博客大全" data-toggle="tooltip" data-placement="bottom" >
                        <div>
                            <a href="#"  target="_blank">
                                <i class="glyphicon glyphicon-link"></i>博客大全
                            </a>
                        </div>
                    </li>
                    <li title="便宜年付VPS，性价比较高" data-toggle="tooltip" data-placement="bottom" >
                        <div>
                            <a href="#"  target="_blank">
                                <i class="glyphicon glyphicon-link"></i>搬瓦工VPS
                            </a>
                        </div>
                    </li>
                    <li title="一个专注于发表原创文章的小清新博客" data-toggle="tooltip" data-placement="bottom" >
                        <div>
                            <a href="#"  target="_blank">
                                <i class="glyphicon glyphicon-link"></i>一夜涕的博客
                            </a>
                        </div>
                    </li>
                    <li title="态度改变生活" data-toggle="tooltip" data-placement="bottom" >
                        <div>
                            <a href="#"  target="_blank">
                                <i class="glyphicon glyphicon-link"></i>大博客
                            </a>
                        </div>
                    </li>
                    <li title="做更好的自己" data-toggle="tooltip" data-placement="bottom" >
                        <div>
                            <a href="#"  target="_blank">
                                <i class="glyphicon glyphicon-link"></i>做更好的自己
                            </a>
                        </div>
                    </li>
                    <li title="搜索引擎学习" data-toggle="tooltip" data-placement="bottom" >
                        <div>
                            <a href="#"  target="_blank">
                                <i class="glyphicon glyphicon-link"></i>DHT
                            </a>
                        </div>
                    </li>
                    <li title="acejs，一个码农的学习日记" data-toggle="tooltip" data-placement="bottom" >
                        <div>
                            <a href="#"  target="_blank">
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
        <a href="https://github.com/Aiden68"  target="_blank" title="GitHub" data-toggle="tooltip" data-placement="top"><i class="fa fa-github fa-2x"></i>GitHub</a>
    </p>
    <p>
        Copyright&copy; 2016-2017 flyat.cc <a href="#" tppabs="http://www.miitbeian.gov.cn/publish/query/indexFirst.action" target="_blank">京ICP备16024618号-2</a> Powered by Flyat.
    </p>
</footer>
<%--<a class="to-top" title="坐稳喽！哥带你飞" data-toggle="tooltip" data-placement="bottom"></a>--%>
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="../static/js/jquery.min.js"></script>
<script src="../static/js/bootstrap.min.js"></script>
<script src="../static/js/jquery.validate-1.13.1.js"></script>
<script>
    var validator1;
    $(document).ready(function () {
        validator1 = $("#comment_id").validate({
            /* debug: true, */
            rules: {
                comName: {
                    required: true,
                    minlength: 2,
                    maxlength: 16
                },
                comEmail:{
                    email:true,
                },
                comContent: {
                    required: true,
                },
            },
            messages: {
                comName: {
                    required: '请输入昵称',
                    minlength: '昵称不能小于2个字符',
                    maxlength: '昵称不能超过16个字符'
                    /* remote: '用户名不存在' */
                },
                comEmail:{
                    email:'请输入正确的电子邮件地址'
                },
                comContent: {
                    required: '请输入内容'
                },
            },
        });
    });
</script>
<script type="text/javascript" src="../static/ueditor/third-party/SyntaxHighlighter/shCore.js"></script>
<script type="text/javascript">
    SyntaxHighlighter.all();
</script>
<script type="text/javascript">
    var bdText = $(".blog-info-title").text();
    bdText = "《" + $.trim(bdText).substring(1) + "》 " + 　$.trim(clearHtmlTag($(".blog-info-body").text())).substring(0, 120) + "  (by flyat.cc)";
    function clearHtmlTag(context) {
        context = context.replace(/(\n)/g, "");
        context = context.replace(/(\t)/g, "");
        context = context.replace(/(\r)/g, "");
        context = context.replace(/<\/?[^>]*>/g, "");
        context = context.replace(/\s*/g, "");
        return context;
    }
    var duoshuoQuery = {short_name:"flyat"};
    $(".archiveOl li").click(function(){
        var $this = $(this);
        search({'archiveDate':$this.children("a").attr("date-archive")})
    })
</script>
<script type="text/javascript">
    (function(){
        var appid = 'cysUmolpS';
        var conf = 'prod_479886ecbf9c80599dcbd3002fc15296';
        var width = window.innerWidth || document.documentElement.clientWidth;
        if (width < 960) {
            window.document.write('<script id="changyan_mobile_js" charset="utf-8" type="text/javascript" src="https://changyan.sohu.com/upload/mobile/wap-js/changyan_mobile.js?client_id=' + appid + '&conf=' + conf + '"><\/script>');
        } else {
            var loadJs=function(d,a){var c=document.getElementsByTagName("head")[0]||document.head||document.documentElement;var b=document.createElement("script");b.setAttribute("type","text/javascript");b.setAttribute("charset","UTF-8");b.setAttribute("src",d);if(typeof a==="function"){if(window.attachEvent){b.onreadystatechange=function(){var e=b.readyState;if(e==="loaded"||e==="complete"){b.onreadystatechange=null;a()}}}else{b.onload=a}}c.appendChild(b)};loadJs("https://changyan.sohu.com/upload/changyan.js",function(){window.changyan.api.config({appid:appid,conf:conf})}); } })();
</script><script type="text/javascript" src="../assets.changyan.sohu.com/upload/plugins/plugins.count.js" tppabs="https://assets.changyan.sohu.com/upload/plugins/plugins.count.js"  async="async"></script>
</body>
</html>
