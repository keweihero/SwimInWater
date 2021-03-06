<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html lang="en">

<head>
    <meta charset="utf-8">
    <title>路线详情</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/common.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/route-detail.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/statics/css/search.css">
</head>

<body>
<!--引入头部-->
<div id="header"><%@ include file="header.jsp" %></div>
    <!-- 详情 start -->   
    <div class="wrap">
        <div class="bread_box">
            <a href="/">首页</a>
            <span> &gt;</span>
            <a href="#">${contentName }</a><span> &gt;</span>
            <a href="#">${scenicspot.sContent }</a>
        </div>
        <div class="prosum_box">
            <dl class="prosum_left">
                <dt>
                    <img alt="" class="big_img" src="${pageContext.request.contextPath}${scenPicList[0].PRelativePath }">
                </dt>
                <dd style="height: 352px">
                    <a class="up_img up_img_disable"></a>
                    
                    <c:forEach items="${scenPicList }" var="scenpiclist" varStatus="statu">
                    <c:if test="${statu.index == 0}">
                    <a title="" class="little_img cur_img" data-bigpic="${pageContext.request.contextPath}${scenpiclist.PRelativePath }">
                        <img src="${pageContext.request.contextPath}${scenpiclist.PRelativePath }">
                    </a>
                    </c:if>
                    <c:if test="${statu.index < 4 && statu.index >0}">
                    <a title="" class="little_img" data-bigpic="${pageContext.request.contextPath}${scenpiclist.PRelativePath }">
                        <img src="${pageContext.request.contextPath}${scenpiclist.PRelativePath }">
                    </a>
                    </c:if>
                    <c:if test="${statu.index >= 4 }">
                    <a title="" class="little_img" data-bigpic="${pageContext.request.contextPath}${scenpiclist.PRelativePath }" style="display:none;">
                        <img src="${pageContext.request.contextPath}${scenpiclist.PRelativePath }">
                    </a>
                    </c:if>
                    </c:forEach>
                    
                    <a class="down_img down_img_disable" style="margin-bottom: 0;"></a>
                </dd>
            </dl>
            <div class="prosum_right">
               <p class="pros_title">【${scenicspot.sCity }】全国-曼谷6-7天自由行 泰国出境旅游 特价往返机票自由行二次确认</p>
                <p class="hot">1-2月出发，网付立享￥1099/2人起！爆款位置有限，抢完即止！</p>
                <div class="pros_other">
                    <p>经营商家  ：叶德斌</p>
                    <p>咨询电话 : 400-618-9090</p>
                    <p>行程概要 ： 这里放线路</p>  
                    <p>5天4晚,0购物0自费,高档型酒店含24H接送,飞机往返</p>  
                </div>
                <div class="pros_price">
                    <p class="price">
	                    <strong>¥</strong>
	                    <strong id="price">${scenicspot.sPrice }</strong>
	                    <span>起</span>
                    </p>
                    <p>
              	 		<div class="btn-group" role="group" aria-label="...">
                            <c:forEach items="${hotelList }" var="hotel" varStatus="sta">
                                <c:if test="${sta.index == 0}">
                                    <button type="button" class="hotel btn btn-default hotel_btn" style="background-color: #5cb85c;color: #fff" data="${hotel.hPrice}" hid="${hotel.id}">${hotel.hName}</button>
                                </c:if>
                                <c:if test="${sta.index != 0}">
                                    <button type="button" class="hotel btn btn-default hotel_btn" data="${hotel.hPrice}" hid="${hotel.id}">${hotel.hName}</button>
                                </c:if>
                            </c:forEach>
						</div>
					</p>
                    <p class="collect">
                        <a class="btn" id="booknow"><!-- <i class="glyphicon glyphicon-heart-empty"> --></i>立即预订</a>
                        <form action="${pageContext.request.contextPath}/order/book" method="post" id="commit">
                            <input type="hidden" id="scenId" name="scenId" value="${scenicspot.id}">
                            <input type="hidden" id="hotelId" name="hotelId" value="">
                        </form>
                        <%--<a  class="btn already" disabled="disabled"><i class="glyphicon glyphicon-heart-empty"></i>点击收藏</a>
                        <span>已收藏${显示收藏次数 }次</span>--%>
                    </p>
                </div>        
            </div>
        </div>
        <!-- ---------------------------- -->
        <div class="page_one">
        <div class="contant">
            <div class="xinxi clearfix">
                <div class="left">
                    <div class="header">
                        <span>附近酒店信息</span>
                        <span class="jg">价格</span>
                    </div>
                    <ul>
                        <c:forEach items="${hotelList }" var="hotel">
                            <li>
                                <div class="img"><img src="${pageContext.request.contextPath}/${hotel.pRelativePath}" style="width: 300px;height: 170px;" alt=""></div>
                                <div class="text1">
                                    <p>${hotel.hName}</p>
                                    <br/>
                                    <p>${hotel.hContent}</p>
                                </div>
                                <div class="price">
                                    <p class="price_num">
                                        <span>&yen;</span>
                                        <span>${hotel.hPrice}</span>
                                        <span>起</span>
                                    </p>
                                    <p><a href="hotel_detail/${hotel.id}">查看详情</a></p>
                                </div>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
                <div class="right">
                    <div class="top">
                        <div class="hot">HOT</div>
                        <span>热门推荐</span>
                    </div>
                    <ul>
                        <li>
                            <div class="left"><img src="${pageContext.request.contextPath}/statics/images/04-search_09.jpg" alt=""></div>
                            <div class="right">
                                <p>清远新银盏温泉度假村酒店/自由行套...</p>
                                <p>网付价<span>&yen;<span>899</span>起</span>
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="left"><img src="${pageContext.request.contextPath}/statics/images/04-search_09.jpg" alt=""></div>
                            <div class="right">
                                <p>清远新银盏温泉度假村酒店/自由行套...</p>
                                <p>网付价<span>&yen;<span>899</span>起</span>
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="left"><img src="${pageContext.request.contextPath}/statics/images/04-search_09.jpg" alt=""></div>
                            <div class="right">
                                <p>清远新银盏温泉度假村酒店/自由行套...</p>
                                <p>网付价<span>&yen;<span>899</span>起</span>
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="left"><img src="${pageContext.request.contextPath}/statics/images/04-search_09.jpg" alt=""></div>
                            <div class="right">
                                <p>清远新银盏温泉度假村酒店/自由行套...</p>
                                <p>网付价<span>&yen;<span>899</span>起</span>
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="left"><img src="${pageContext.request.contextPath}/statics/images/04-search_09.jpg" alt=""></div>
                            <div class="right">
                                <p>清远新银盏温泉度假村酒店/自由行套...</p>
                                <p>网付价<span>&yen;<span>899</span>起</span>
                                </p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
        <!-- ---------------------------- -->
        <div class="you_need_konw">
            <span>旅游须知</span>
            <div class="notice">
                <p>1、旅行社已投保旅行社责任险。建议游客购买旅游意外保险 <br>

                <p>2、旅游者参加打猎、潜水、海边游泳、漂流、滑水、滑雪、滑草、蹦极、跳伞、滑翔、乘热气球、骑马、赛车、攀岩、水疗、水上飞机等属于高风险性游乐项目的，敬请旅游者务必在参加前充分了解项目的安全须知并确保身体状况能适应此类活动；如旅游者不具备较好的身体条件及技能，可能会造成身体伤害。</p>

                <p>3、参加出海活动时，请务必穿着救生设备。参加水上活动应注意自己的身体状况，有心脏病、冠心病、高血压、感冒、发烧和饮酒及餐后不可以参加水上活动及潜水。在海里活动时，严禁触摸海洋中各种鱼类，水母，海胆，珊瑚等海洋生物，避免被其蛰伤。老人和小孩必须有成年人陪同才能参加合适的水上活动。在海边游玩时，注意保管好随身携带的贵重物品。</p>

                <p>4、根据中国海关总署的规定，旅客在境外购买的物品，在进入中国海关时可能需要征收关税。详细内容见《中华人民共和国海关总署公告2010年第54号文件》。</p>

                <p>5、建议出发时行李托运，贵重物品、常用物品、常用药品、御寒衣物等请随身携带，尽量不要托运。行李延误属于不可抗力因素，我司将全力协助客人跟进后续工作，但我司对此不承担任何责任。</p>
                <p>1、旅行社已投保旅行社责任险。建议游客购买旅游意外保险 <br>

                <p>2、旅游者参加打猎、潜水、海边游泳、漂流、滑水、滑雪、滑草、蹦极、跳伞、滑翔、乘热气球、骑马、赛车、攀岩、水疗、水上飞机等属于高风险性游乐项目的，敬请旅游者务必在参加前充分了解项目的安全须知并确保身体状况能适应此类活动；如旅游者不具备较好的身体条件及技能，可能会造成身体伤害。</p>

                <p>3、参加出海活动时，请务必穿着救生设备。参加水上活动应注意自己的身体状况，有心脏病、冠心病、高血压、感冒、发烧和饮酒及餐后不可以参加水上活动及潜水。在海里活动时，严禁触摸海洋中各种鱼类，水母，海胆，珊瑚等海洋生物，避免被其蛰伤。老人和小孩必须有成年人陪同才能参加合适的水上活动。在海边游玩时，注意保管好随身携带的贵重物品。</p>

                <p>4、根据中国海关总署的规定，旅客在境外购买的物品，在进入中国海关时可能需要征收关税。详细内容见《中华人民共和国海关总署公告2010年第54号文件》。</p>

                <p>5、建议出发时行李托运，贵重物品、常用物品、常用药品、御寒衣物等请随身携带，尽量不要托运。行李延误属于不可抗力因素，我司将全力协助客人跟进后续工作，但我司对此不承担任何责任。</p>
            </div>           
        </div>
        <!-- ----------------------------------- -->
    </div>
    <!-- 详情 end -->

    <!--引入头部-->
    <div id="footer"><%@ include file="footer.jsp" %></div>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="${pageContext.request.contextPath}/statics/js/jquery-2.1.0.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="${pageContext.request.contextPath}/statics/js/bootstrap.min.js"></script>

<script type="text/javascript">
    $(function(){
        $(".hotel").css("margin-left","2px");
        $(".hotel").click(function(){
            var hotelName = $(this).text();
            $(this).css("background-color","#5cb85c");
            $(this).css("color","#fff");
            $(this).siblings().css("background-color","#fff");
            $(this).siblings().css("color","#000");
            var hotelPrice = $(this).attr("data");
            var scePrice = "${scenicspot.sPrice }";
            var totalPrice = hotelPrice*1 + scePrice*1;
            $("#price").html(totalPrice + ".00");
        });
        // 表单赋值
        var hId = $(".hotel_btn").eq(0).attr('hid');
        $("#hotelId").val(hId);

        $(".hotel_btn").click(function () {
            var hId = $(this).attr('hid');
            $("#hotelId").val(hId);
        });

        $("#booknow").click(function () {
            $("#commit").submit();
        });

    });
</script>

    <!--导入布局js，共享header和footer-->
    <%-- <script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/include.js"></script> --%>
    <script>
    $(document).ready(function() {
        //焦点图效果
        //点击图片切换图片
        $('.little_img').on('mousemove', function() {
            $('.little_img').removeClass('cur_img');
            var big_pic = $(this).data('bigpic');
            $('.big_img').attr('src', big_pic);
            $(this).addClass('cur_img');
        });
           //上下切换
        var picindex = 0;
        var nextindex = 4;
        $('.down_img').on('click',function(){
            var num = $('.little_img').length;
            if((nextindex + 1) <= num){
                $('.little_img:eq('+picindex+')').hide();
                $('.little_img:eq('+nextindex+')').show();
                picindex = picindex + 1;
                nextindex = nextindex + 1;
            }
        });
        $('.up_img').on('click',function(){
            var num = $('.little_img').length;
            if(picindex > 0){
                $('.little_img:eq('+(nextindex-1)+')').hide();
                $('.little_img:eq('+(picindex-1)+')').show();
                picindex = picindex - 1;
                nextindex = nextindex - 1;
            }
        });
        //自动播放
        // var timer = setInterval("auto_play()", 5000);
    });

    //自动轮播方法
    function auto_play() {
        var cur_index = $('.prosum_left dd').find('a.cur_img').index();
        cur_index = cur_index - 1;
        var num = $('.little_img').length;
        var max_index = 3;
        if ((num - 1) < 3) {
            max_index = num - 1;
        }
        if (cur_index < max_index) {
            var next_index = cur_index + 1;
            var big_pic = $('.little_img:eq(' + next_index + ')').data('bigpic');
            $('.little_img').removeClass('cur_img');
            $('.little_img:eq(' + next_index + ')').addClass('cur_img');
            $('.big_img').attr('src', big_pic);
        } else {
            var big_pic = $('.little_img:eq(0)').data('bigpic');
            $('.little_img').removeClass('cur_img');
            $('.little_img:eq(0)').addClass('cur_img');
            $('.big_img').attr('src', big_pic);
        }
    }
    </script>
</body>

</html>