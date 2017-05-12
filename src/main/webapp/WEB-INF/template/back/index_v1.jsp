<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../common/head.jsp"%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--360浏览器优先以webkit内核解析-->


    <title> - 主页示例</title>
	
	<link rel="shortcut icon" href="favicon.ico"> <link href="../static/css/bootstrap.min.css" rel="stylesheet">
    <link href="../static/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="../static/css/animate.css" rel="stylesheet">
    <link href="../static/css/style.css" rel="stylesheet">
</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content">
        <div class="row">
            <div class="col-sm-10">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="row row-sm text-center">
                            <div class="col-xs-6">
                                <div class="panel padder-v item">
                                    <div class="h1 text-info font-thin h1">521</div>
                                    <span class="text-muted text-xs">同比增长</span>
                                    <div class="top text-right w-full">
                                        <i class="fa fa-caret-down text-warning m-r-sm"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="panel padder-v item bg-info">
                                    <div class="h1 text-fff font-thin h1">521</div>
                                    <span class="text-muted text-xs">今日访问</span>
                                    <div class="top text-right w-full">
                                        <i class="fa fa-caret-down text-warning m-r-sm"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="panel padder-v item bg-primary">
                                    <div class="h1 text-fff font-thin h1">521</div>
                                    <span class="text-muted text-xs">销售数量</span>
                                    <div class="top text-right w-full">
                                        <i class="fa fa-caret-down text-warning m-r-sm"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="panel padder-v item">
                                    <div class="font-thin h1">$129</div>
                                    <span class="text-muted text-xs">近日盈利</span>
                                    <div class="bottom text-left">
                                        <i class="fa fa-caret-up text-warning m-l-sm"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title" style="border-bottom:none;background:#fff;">
                                <h5>服务器状态</h5>
                            </div>
                            <div class="ibox-content" style="border-top:none;">
                                <div id="flot-line-chart-moving" style="height:217px;">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-9" style="padding-right:0;">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title" style="border-bottom:none;background:#fff;">
                                <h5>往年数据</h5>
                            </div>
                            <div class="ibox-content" style="border-top:none;">
                                <div id="yesterday" style="height:217px;">
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--<div class="col-sm-3" style="padding-left:0;">--%>
                        <%--<div class="ibox float-e-margins">--%>
                            <%--<div class="ibox-content" style="border-top:none;background-color:#e4eaec;">--%>
                                <%--<h5>新增玩家</h5>--%>
                                <%--<div class="progress progress-striped active">--%>
                                    <%--<div style="width: 75%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="75" role="progressbar" class="progress-bar">--%>
                                        <%--<span class="sr-only"></span>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                                <%----%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                </div>
                <div class="row">
                    <div class="col-sm-5">
                        <div class="ibox float-e-margins">
                        <div class="" id="ibox-content">

                            <div id="vertical-timeline" class="vertical-container light-timeline">
                              
                                    
                            </div>
                        </div>
                        </div>
                    </div>
                    <div class="col-sm-7">
                        <div class="ibox">
                        
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-2">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>任务列表</h5>
                    </div>
                    <div class="ibox-content">
                        <ul class="todo-list m-t small-list ui-sortable">
                            <li>
                                <a href="#" class="check-link"><i class="fa fa-check-square"></i> </a>
                                <span class="m-l-xs todo-completed">吃饭</span>

                            </li>
                            <li>
                                <a href="#" class="check-link"><i class="fa fa-check-square"></i> </a>
                                <span class="m-l-xs  todo-completed">多吃饭</span>

                            </li>
                           
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 全局js -->
	
    <script src="../static/js/jquery.min.js?v=2.1.4"></script>
    <script src="../static/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="../static/js/plugins/layer/layer.min.js"></script>
    <!-- Flot -->
    <script src="../static/js/plugins/flot/jquery.flot.js"></script>
    <script src="../static/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="../static/js/plugins/flot/jquery.flot.resize.js"></script>
    <script src="../static/js/plugins/flot/jquery.flot.pie.js"></script>
    <!-- 自定义js -->
    <script src="../static/js/content.js"></script>
    <!--flotdemo-->
    <script type="text/javascript">
        $(function() {
            var container = $("#flot-line-chart-moving");
            var maximum = container.outerWidth() / 2 || 300;
            var data = [];

            function getRandomData() {
                if (data.length) {
                    data = data.slice(1);
                }
                while (data.length < maximum) {
                    var previous = data.length ? data[data.length - 1] : 50;
                    var y = previous + Math.random() * 10 - 5;
                    data.push(y < 0 ? 0 : y > 100 ? 100 : y);
                }
                var res = [];
                for (var i = 0; i < data.length; ++i) {
                    res.push([i, data[i]])
                }
                return res;
            }
            series = [{
                data: getRandomData(),
                lines: {
                    fill: true
                }
            }];
            var plot = $.plot(container, series, {
                grid: {

                    color: "#999999",
                    tickColor: "#f7f9fb",
                    borderWidth:0,
                    minBorderMargin: 20,
                    labelMargin: 10,
                    backgroundColor: {
                        colors: ["#ffffff", "#ffffff"]
                    },
                    margin: {
                        top: 8,
                        bottom: 20,
                        left: 20
                    },
                    markings: function(axes) {
                        var markings = [];
                        var xaxis = axes.xaxis;
                        for (var x = Math.floor(xaxis.min); x < xaxis.max; x += xaxis.tickSize * 2) {
                            markings.push({
                                xaxis: {
                                    from: x,
                                    to: x + xaxis.tickSize
                                },
                                color: "#fff"
                            });
                        }
                        return markings;
                    }
                },
                colors: ["#4fc5ea"],
                xaxis: {
                    tickFormatter: function() {
                        return "";
                    }
                },
                yaxis: {
                    min: 0,
                    max: 110
                },
                legend: {
                    show: true
                }
            });

            // Update the random dataset at 25FPS for a smoothly-animating chart

            setInterval(function updateRandom() {
                series[0].data = getRandomData();
                plot.setData(series);
                plot.draw();
            }, 40);
        });
 
            function euroFormatter(v, axis) {
                return "&yen;"+v.toFixed(axis.tickDecimals);
            }

            function doPlot(position) {
                $.plot($("#yesterday"), [{
                    data: oilprices,
                    label: "老玩家"
                }, {
                    data: exchangerates,
                    label: "新玩家",
                    yaxis: 2
                }], {
                    xaxes: [{
                        mode: 'time'
                    }],
                    yaxes: [{
                        min: 0
                    }, {
                        alignTicksWithAxis: position == "right" ? 1 : null,
                        position: position,
                        tickFormatter: euroFormatter
                    }],
                    legend: {
                        position: 'sw'
                    },
                    colors: ["#f7f9fb"],
                    grid: {
                        color: "#999999",
                        hoverable: true,
                        clickable: true,
                        tickColor: "#f7f9fb",
                        borderWidth:0,
                        hoverable: true 

                    },
                    tooltip: true,
                    tooltipOpts: {
                        content: "%s %x 为 %y",
                        xDateFormat: "%y-%0m-%0d",

                        onHover: function(flotItem, $tooltipEl) {
                            // console.log(flotItem, $tooltipEl);
                        }
                    }
                });
    }

    doPlot("right");

    $("button").click(function() {
        doPlot($(this).text());
    });
});
    </script>
</body>

</html>
