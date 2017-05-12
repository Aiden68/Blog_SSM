<%--
  Created by IntelliJ IDEA.
  User: JLL
  Date: 2017/4/18
  Time: 17:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="wrapper">
    <!--左侧导航开始-->
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="nav-close"><i class="fa fa-times-circle"></i>
        </div>
        <div class="sidebar-collapse">
            <ul class="nav" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <span class="clear">
                                    <span class="block m-t-xs" style="font-size:20px;">
                                        <i class="fa fa-area-chart"></i>
                                        <strong class="font-bold">AndOne</strong>
                                    </span>
                                </span>
                        </a>
                    </div>
                    <div class="logo-element">AndOneAdmin
                    </div>
                </li>
                <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                    <span class="ng-scope">一</span>
                </li>
                <li>
                    <a class="J_menuItem" href="index_v1.html">
                        <i class="fa fa-home"></i>
                        <span class="nav-label">主页</span>
                    </a>
                </li>
                <li>
                    <a href="#">

                        <i class="fa fa-edit"></i>
                        <span class="nav-label">博客</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="#">创建博客<span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                                <li><a class="" href="<%=path%>/backUeditor">Ueditor</a>
                                </li>
                                <li><a class="J_menuItem" href="form_markdown.html">MarkDown</a>
                                </li>

                            </ul>
                        </li>
                        <li>
                            <a class="J_menuItem" href="">博客列表</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="">编辑博客</a>
                        </li>
                    </ul>
                </li>
                <li class="line dk"></li>
                <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                    <span class="ng-scope">二</span>
                </li>
                <li>
                    <a href="mailbox.html"><i class="fa fa-envelope"></i> <span class="nav-label">评论</span><span class="label label-warning pull-right">16</span></a>
                    <ul class="nav nav-second-level">
                        <li><a class="J_menuItem" href="mailbox.html">收件箱</a>
                        </li>
                        <li><a class="J_menuItem" href="mail_detail.html">查看邮件</a>
                        </li>
                        <li><a class="J_menuItem" href="mail_compose.html">写信</a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="#"><i class="fa fa-table"></i> <span class="nav-label">表格</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li><a class="J_menuItem" href="table_basic.html">基本表格</a>
                        </li>
                        <li><a class="J_menuItem" href="table_data_tables.html">DataTables</a>
                        </li>
                        <li><a class="J_menuItem" href="table_jqgrid.html">jqGrid</a>
                        </li>
                        <li><a class="J_menuItem" href="table_foo_table.html">Foo Tables</a>
                        </li>
                        <li><a class="J_menuItem" href="table_bootstrap.html">Bootstrap Table
                            <span class="label label-danger pull-right">推荐</span></a>
                        </li>
                    </ul>
                </li>
                <li class="line dk"></li>
                <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                    <span class="ng-scope">三</span>
                </li>
                <li>
                    <a href="#"><i class="fa fa-picture-o"></i> <span class="nav-label">相册</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li><a class="J_menuItem" href="basic_gallery.html">基本图库</a>
                        </li>
                        <li><a class="J_menuItem" href="carousel.html">图片切换</a>
                        </li>
                        <li><a class="J_menuItem" href="blueimp.html">Blueimp相册</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-cutlery"></i> <span class="nav-label">工具 </span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li><a class="J_menuItem" href="form_builder.html">表单构建器</a>
                        </li>
                    </ul>
                </li>

            </ul>
        </div>
    </nav>
    <!--左侧导航结束-->
</div>