<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>收藏排行榜</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/css/common.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/css/ranking-list.css">
        <script src="js/jquery-3.3.1.js"></script>
    </head>
    <body>
    <!--引入头部-->
    <div id="header"></div>
        <div class="contant">
            <div class="shaixuan">
                <span>线路名称</span>
                <input type="text">
                <span>金额</span>
                <input type="text">~<input type="text">
                <button>搜索</button>
            </div>
            <div class="list clearfix">
                <ul>
                    <li>
                        <span class="num one">1</span>
                        <a href="route_detail.html"><img src="${pageContext.request.contextPath }/statics/images/jiangxuan_4.jpg" alt=""></a>
                        <h4><a href="route_detail.html">【尾单特卖】全国-曼谷6-7天自由行 泰国出境旅游 特价往6-7天自由行 泰国出境旅游 特价往..</a></h4>
                        <p>
                            <b class="price">&yen;<span>899</span>起</b>
                            <span class="shouchang">已收藏450次</span>
                        </p>
                    </li>
                    <li>
                        <span class="num two">2</span>
                         <a href="route_detail.html"><img src="${pageContext.request.contextPath }/statics/images/jiangxuan_4.jpg" alt=""></a>
                        <h4><a href="route_detail.html">【尾单特卖】全国-曼谷6-7天自由行 泰国出境旅游 特价往6-7天自由行 泰国出境旅游 特价往..</a></h4>
                        <p>
                            <b class="price">&yen;<span>899</span>起</b>
                            <span class="shouchang">已收藏450次</span>
                        </p>
                    </li>
                    <li>
                        <span class="num">3</span>
                         <a href="route_detail.html"><img src="${pageContext.request.contextPath }/statics/images/jiangxuan_4.jpg" alt=""></a>
                        <h4><a href="route_detail.html">【尾单特卖】全国-曼谷6-7天自由行 泰国出境旅游 特价往6-7天自由行 泰国出境旅游 特价往..</a></h4>
                        <p>
                            <b class="price">&yen;<span>899</span>起</b>
                            <span class="shouchang">已收藏450次</span>
                        </p>
                    </li>
                    <li>
                        <span class="num">4</span>
                         <a href="route_detail.html"><img src="${pageContext.request.contextPath }/statics/images/jiangxuan_4.jpg" alt=""></a>
                        <h4><a href="route_detail.html">【尾单特卖】全国-曼谷6-7天自由行 泰国出境旅游 特价往6-7天自由行 泰国出境旅游 特价往..</a></h4>
                        <p>
                            <b class="price">&yen;<span>899</span>起</b>
                            <span class="shouchang">已收藏450次</span>
                        </p>
                    </li>
                    <li>
                        <span class="num">5</span>
                         <a href="route_detail.html"><img src="${pageContext.request.contextPath }/statics/images/jiangxuan_4.jpg" alt=""></a>
                        <h4><a href="route_detail.html">【尾单特卖】全国-曼谷6-7天自由行 泰国出境旅游 特价往6-7天自由行 泰国出境旅游 特价往..</a></h4>
                        <p>
                            <b class="price">&yen;<span>899</span>起</b>
                            <span class="shouchang">已收藏450次</span>
                        </p>
                    </li>
                    <li>
                        <span class="num">6</span>
                         <a href="route_detail.html"><img src="${pageContext.request.contextPath }/statics/images/jiangxuan_4.jpg" alt=""></a>
                        <h4><a href="route_detail.html">【尾单特卖】全国-曼谷6-7天自由行 泰国出境旅游 特价往6-7天自由行 泰国出境旅游 特价往..</a></h4>
                        <p>
                            <b class="price">&yen;<span>899</span>起</b>
                            <span class="shouchang">已收藏450次</span>
                        </p>
                    </li>
                    <li>
                        <span class="num">7</span>
                         <a href="route_detail.html"><img src="${pageContext.request.contextPath }/statics/images/jiangxuan_4.jpg" alt=""></a>
                        <h4><a href="route_detail.html">【尾单特卖】全国-曼谷6-7天自由行 泰国出境旅游 特价往6-7天自由行 泰国出境旅游 特价往..</a></h4>
                        <p>
                            <b class="price">&yen;<span>899</span>起</b>
                            <span class="shouchang">已收藏450次</span>
                        </p>
                    </li>
                    <li>
                        <span class="num">8</span>
                        <a href="route_detail.html"><img src="${pageContext.request.contextPath }/statics/images/jiangxuan_4.jpg" alt=""></a>
                        <h4><a href="route_detail.html">【尾单特卖】全国-曼谷6-7天自由行 泰国出境旅游 特价往6-7天自由行 泰国出境旅游 特价往..</a></h4>
                        <p>
                            <b class="price">&yen;<span>899</span>起</b>
                            <span class="shouchang">已收藏450次</span>
                        </p>
                    </li>
                </ul>
            </div>
            <div class="pageNum">
                <ul>
                    <li><a href="">首页</a></li>
                    <li class="threeword"><a href="#">上一页</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">6</a></li>
                    <li><a href="#">7</a></li>
                    <li><a href="#">8</a></li>
                    <li><a href="#">9</a></li>
                    <li><a href="#">10</a></li>
                    <li class="threeword"><a href="javascript:;">下一页</a></li>
                    <li class="threeword"><a href="javascript:;">末页</a></li>
                </ul>
            </div>
        </div>
    	
         <!--导入底部-->
   		 <div id="footer"></div>
    <!--导入布局js，共享header和footer-->
    <script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/include.js"></script>
    </body>
</html>