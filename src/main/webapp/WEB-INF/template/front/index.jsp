<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../common/head.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>AndOne博客</title>
    <link rel="stylesheet" type="text/css" href="../static/css/reset.css">
    <link rel="stylesheet" type="text/css" href="../static/css/index.css">
    <link href="../static/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
<div class="main-wrapper">
    <header>
        <nav>
            <div class="logo"><a href="<%=basePath%>list">AndOne的博客</a></div>
            <ul>
                <li><a href="#" class="active">首页</a></li>
                <li><a href="<%=basePath %>image">图册</a></li>
                <li id="sidebar_trigger"><a href="#">分类</a></li>
            </ul>
        </nav>
        <div id="banner">
            <div class="inner">
                <h1>AndOne</h1>
                <p class="sub-heading">Life is a journey,not a destination,what matters is the scenery on the way and the mood while viewing it.Take your heart with you while making this journey.
                </p>
                <!-- <button id="main-btn">养我</button> -->
                <div class="more" id="scrollmore">
                    <i class="fa fa-arrow-down "></i>
                    <p>more</p>
                </div>
            </div>
        </div>
    </header>
    <div class="content">
        <section class="green-section">
            <div class="wrapper">
                <div>
                    <h2>种一棵树最好的时候是十年前，其次是现在。</h2>
                    <div class="hr"></div>
                    <p class="sub-heading">Is that too late to learn program in 25 years old?</p>
                </div>
                <div class="icon-group">
                    <a href="<%=basePath %>list"><span class="icon"><i class="fa fa-file-text-o  fa-2x"></i>博客</span></a>
                    <a href="<%=basePath %>image"><span class="icon"><i class="fa fa-picture-o fa-2x"></i>图册</span> </a>
                    <a href="#" id="sidebar_trigger2"><span class="icon"><i class="fa fa-sort-amount-desc fa-2x"></i>分类</span></a>
                </div>
            </div>
        </section>
        <section class="gray-section">
            <div class="article-preview">
                <div class="img-section">
                    <img src="http://okziuy4fm.bkt.clouddn.com/pic1.jpg" alt="">
                </div>
                <div class="text-section">
                    <h2>Believe in yourself</h2>
                    <div class="sub-heading">

                    </div>
                    <p style="font-size: 20px">以绝大多数人的努力程度之低，远远没有达到要去拼天赋的地步。
                    </p>
                </div>
            </div>
            <div class="article-preview">
                <div class="text-section">
                    <h2>&nbsp;&nbsp;你是如何走出阴霾的？</h2>
                    <div class="sub-heading">

                    </div>
                    <p style="font-size: 25px">&nbsp;&nbsp;&nbsp;多走几步。
                    </p>
                </div>
                <div class="img-section">
                    <img src="http://okziuy4fm.bkt.clouddn.com/pic2.jpg" alt="">
                </div>
            </div>
            <div class="article-preview">
                <div class="img-section">
                    <img src="http://okziuy4fm.bkt.clouddn.com/pic3.jpg" alt="">
                </div>
                <div class="text-section">
                    <h2>&nbsp;人这一生为什么要努力？</h2>
                    <div class="sub-heading">

                    </div>
                    <p style="font-size: 25px">&nbsp;&nbsp;&nbsp;最痛苦的事不是失败，是我本可以。
                    </p>
                </div>
            </div>
        </section>

    </div>
    <footer>
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
</div>
<div class="mask">

</div>
<div id="sidebar">
    <ul id = "catSelect">
        <li><a href="<%=basePath%>list">所有文章</a></li>
        <%--<li><a href="<%=path %>/index?catName=PAT甲级">PAT甲级</a></li>--%>
    </ul>
</div>
<button class="back-to-top">返回顶部</button>
<script src="../static/js/jquery.min.js"></script>
<script src="../static/js/bootstrap.min.js"></script>
<%--<script src="/js/main.js"></script>--%>
<script type="text/javascript">
    var sidebar = $('#sidebar'),
        mask = $('.mask'),
        backBtn = $('.back-to-top'),
        sidebar_trigger = $('#sidebar_trigger'),
        sidebar_trigger2 = $('#sidebar_trigger2');
    function showSidebar() {
        var len = $("#catSelect li").size();
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
                        var url = "<%=basePath%>/list?catName="+cat;
                        var $li = $("<li><a href="+ url +">"+cat+"</a></li>");
                        $("#catSelect").append($li);
                    }
                    mask.fadeIn();
                    sidebar.css('right',0);
                }
            } );
        }
        else{
            mask.fadeIn();
            sidebar.css('right',0);
        }
    }

    function hideSidebar() {
        mask.fadeOut();
        sidebar.css('right',-sidebar.width());
    }
    sidebar_trigger.click(showSidebar);
    sidebar_trigger2.click(showSidebar);
    mask.on('click',hideSidebar);


    backBtn.on('click',function () {
        $('html,body').animate({
            scrollTop:0
        }, 800)
    })

    $(window).on('scroll',function () {
        if($(window).scrollTop() > $(window).height())
            backBtn.fadeIn();
        else
            backBtn.fadeOut();
    })

    $(window).trigger('scroll');

    var sm = $('#scrollmore');
    var t = $(window).scrollTop();
    sm.on('click',function () {
        $('html,body').animate({
            scrollTop:t+700
        }, 800)
    })
</script>
</body>

</html>