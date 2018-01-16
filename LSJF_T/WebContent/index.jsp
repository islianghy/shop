<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<% 
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<title>LSJF</title>

<!--js-->
<script src="js/jquery-1.8.2.min.js"></script>
<script src="js/common.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/ddsmoothmenu.js"></script>
<script src="js/jquery.flexslider.js"></script>
<script src="js/jquery.elastislide.js"></script>
<script src="js/jquery.jcarousel.min.js"></script>
<script src="js/jquery.accordion.js"></script>
<script src="js/light_box.js"></script>


<script src="jquery/jquery-1.7.2.min.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript">
	function dyniframesize(down) {
		var pTar = null;
		if (document.getElementById) {
			pTar = document.getElementById(down);
		} else {
			eval('pTar = ' + down + ';');
		}
		if (pTar && !window.opera) {
			//begin resizing iframe 
			pTar.style.display = "block"
			if (pTar.contentDocument && pTar.contentDocument.body.offsetHeight) {
				//ns6 syntax 
				pTar.height = pTar.contentDocument.body.offsetHeight + 20;
				pTar.width = pTar.contentDocument.body.scrollWidth + 20;
			} else if (pTar.Document && pTar.Document.body.scrollHeight) {
				//ie5+ syntax 
				pTar.height = pTar.Document.body.scrollHeight;
				pTar.width = pTar.Document.body.scrollWidth;
			}
		}
	}
	
</script>
<script type="text/javascript">$(document).ready(function(){$(".inline").colorbox({inline:true, width:"50%"});});</script>
<!--end js-->

<!-- Mobile Specific Metas ================================================== -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS ================================================== -->

<link rel="stylesheet" type="text/css" href="css/index.css">
	<script type="text/javascript" src="js/index.js"></script>
	
<!--  
<script type="text/javascript" src="js/js/jquery.js"></script>
	
-->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/colors.css">
<link rel="stylesheet" href="css/skeleton.css">
<link rel="stylesheet" href="css/layout.css">
<link rel="stylesheet" href="css/ddsmoothmenu.css"/>
<link rel="stylesheet" href="css/elastislide.css"/>
<link rel="stylesheet" href="css/home_flexslider.css"/>

<link rel="stylesheet" href="css/light_box.css"/>
<script src="js/html5.js"></script>
</head>
<body>
<c:if test="${empty comLists&& empty webLists&& empty brandLists }">
<%
response.sendRedirect("getIndexInfo.do");
%>

</c:if>
<!-- 广告js -->
<style type="text/css">
*{margin:0;padding:0;list-style-type:none;}
a,img{border:0;color:#5e5e5e;text-decoration:none;}
body{font:12px/180% Arial, Helvetica, sans-serif, "新宋体";}
*html,*html body{background-image:url(about:blank);background-attachment:fixed;}

/* fixediv */
.fixediv{position:fixed;top:140px;z-index:9999;height:216px;width:100px;}
*html .fixediv{position:absolute;top:expression(eval(document.documentElement.scrollTop));margin:140px 0 0 0;}
.fixediv-l{left:0px;}
.fixediv-r{right:0px;}
.fixediv .btn{height:25px;background:#CCCCCC;text-align:right;line-height:25px;overflow:hidden;}
</style>

<div id="Bar1190_big" class="fixediv fixediv-l">
	<div class="btn"><a href="javascript:void(0);" onClick="bar1190_hidden()">关闭</a> </div>
	<a href="${AdLists[0].adhref }" target="_blank"><img width="100" height="155" src="${AdLists[0].adsrc }" alt="" /></a>
</div>
<div id="Bar1190_small" class="fixediv fixediv-l" style="width:25px;display:none;">
	<div class="btn"><a href="javascript:void(0);" onClick="bar1190_show()">展开</a></div>
	<a href="${AdLists[0].adhref }" target="_blank"><img width="25" height="155" src="images/close.jpg" alt="" /></a>
</div>



<div id="Bar11901_big" class="fixediv fixediv-r">
	<div class="btn"><a href="javascript:void(0);" onClick="bar11901_hidden()">关闭</a> </div>
	<a href="${AdLists[0].adhref }" target="_blank"><img width="100" height="155" src="${AdLists[0].adsrc }" alt="" /></a>
</div>
<div id="Bar11901_small" class="fixediv fixediv-r" style="width:25px;display:none;">
	<div class="btn"><a href="javascript:void(0);" onClick="bar11901_show()">展开</a></div>
	<a href="${AdLists[0].adhref }" target="_blank"><img width="25" height="155" src="images/close.jpg" alt="" /></a>
</div>

<script type="text/javascript">
function bar1190_show(){
   document.getElementById('Bar1190_big').style.display='';
   document.getElementById('Bar1190_small').style.display='none';
}
function bar1190_hidden(){
   document.getElementById('Bar1190_big').style.display='none';
   document.getElementById('Bar1190_small').style.display='';
}
var autohide1190 = setTimeout("bar1190_hidden()",5000);


function bar11901_show(){
   document.getElementById('Bar11901_big').style.display='';
   document.getElementById('Bar11901_small').style.display='none';
}
function bar11901_hidden(){
   document.getElementById('Bar11901_big').style.display='none';
   document.getElementById('Bar11901_small').style.display='';
}
var autohide11901 = setTimeout("bar11901_hidden()",5000);
</script>
<div style="text-align:center;clear:both">
</div>


	<div class="mainContainer sixteen container" >
	        <!--Header Block-->
            <div class="header-wrapper"  style="z-index: 100000;">
              <header class="container"  style="z-index: 100000;">
                <div class="head-right"  style="z-index: 100000; ">
                     <ul class="top-nav">
                      <c:if test="${empty loginuser }">
                    <li class="log-in"><a href="account_create.jsp" title="注册">免费注册</a></li> 
                    </c:if>
                    <c:if test="${loginuser!=null }">
                    <li class="log-in"><a href="admin/login.jsp" title="注册">管理员登录</a></li> 
                    </c:if>
                            <li class="log-in"><a href="index.jsp" title="首页">首页</a></li>                            
                            <li class="contact-us"><a href="about_us.jsp" title="关于我们">关于我们</a></li>
                            <li class="checkout"><a href="contact_us.jsp" title="请您留言">请您留言</a></li>
                            <li class="log-in"><a href="cart.jsp" title="提交订单">提交订单</a></li>
                      </ul>
                    <ul class="currencyBox" style="z-index: 100000;">
                    <c:if test="${empty loginuser }">
                    <li id="header_currancy" class="currency"  style="z-index: 100000;"> <a class="mainCurrency" href="account_login.jsp">您没有登录</a>
                          <div id="currancyBox" class="currency_detial"> <a href="account_login.jsp">会员登录</a> <br/><br/><a href="account_create.jsp">免费注册</a> <br/><br/><a href="admin/login.jsp">管理员登录</a> </div>
                        </li>
                    </c:if>
                    <c:if test="${loginuser!=null }">
                    <li id="header_currancy" class="currency"  style="z-index: 100000;"> <a class="mainCurrency" href="#">亲爱的${loginuser.name }！</a>
                          <div id="currancyBox" class="currency_detial"> <a href="forget/findex.jsp?flag=change_mg"  >修改信息</a> <br/><br/><a href="forget/findex.jsp?flag=ma_reply">留言回复</a> <br/><br/><a href="forget/findex.jsp?flag=ma_order">我的订单</a><br/><br/><a href="exit_account.do">退出登录</a> </div>
                        </li>
                    </c:if>
                        
                    </ul>
                  <section class="header-bottom"  style="z-index: 100000;">
                  <div style="width: 200px;margin-left: 200px;" >
                  <!-- 
                   <input type="text" value="输入搜索内容" />
                      <input type="submit" value="搜索" title="搜索" />
                   -->
                     
                    </div>
                    <div class="cart-block" style="margin-left: 120px;z-index: 1000000;" >
					<ul  >
						<li>${fn:length(goodlist) }</li>
						<li><a href="cart.jsp" title="Cart"><img title="购物车" alt="购物车" src="images/item_icon.png" /></a></li>
						<li>购物车</li>
					</ul>
					<div id="minicart" class="remain_cart" style="display: none;  style=z-index: 100000;margin-top: 20px;">
						 <c:if test="${empty goodlist }">
						 
						 <table width="100%;">
						 <tr>
						 <td width="50%">
						 	<p class="empty" style="margin-left: 50px;">购物车空空如也</p>
						 </td>
						 <td>
						 	<img alt="" src="images/emptycart.jpg" width="80px;" style="margin-left: 50px;">
						 </td>
						 </tr>
						 <c:if test="${not empty loginuser }">
						 <tr>
						 	<td>
						 		<b>您还可以查看已买的商品</b>
						 	</td>
						 	<td style="padding-left: 100px;">
						 		<a href="forget/findex.jsp?flag=ma_order" title="" class="colors-btn">查看</a>
							</td>
						 </tr>
						 </c:if>
						 </table>
						 </c:if>
						 <c:if test="${not empty goodlist}">
						 <p class="empty">在您的购物车中有${fn:length(goodlist) }件物品</p>
						 <ol  style="z-index: 1000000;">
						
						 <c:set var="pricee" value="${0}"></c:set>
						 
						 	<c:forEach var="list"  items="${goodlist}" varStatus="sta">
	                    
	                    
	                    <li style="z-index: 1000000;">
								<div class="img-block" style="z-index: 10000;">
								
								<img  src="${list.goods.picsrc }" title="" alt=""   />
								</div>
								<div class="detail-block"  style="z-index: 1000000;">
									<h4><a href="#" title="${list.goods.model }${list.goods.style}"  style="z-index: 1000000;">${list.goods.model }${list.goods.style}</a></h4>
									<p>
										<strong>${list.amount }</strong> * 
										<fmt:formatNumber value="${list.goods.price}" type="currency"/>
										
									</p>
								
								</div>
								<div class="edit-delete-block">
								<!-- 
								<a href="#" title="Edit"><img src="images/edit_icon.png" alt="修改" title="修改" /></a>
									 -->
									 <a href="remove_cart.do?id=${list.id }" title=""><img src="images/delete_item_btn.png" alt="移除" title="移除" /></a>
								
								
									</div>
							</li>
	                    <c:set var="pricee" value="${pricee+list.goods.price*list.amount }"></c:set>                 
	                    
	                    
	    					</c:forEach> 
	    						
						 	<li>
								<div class="total-block">总金额:<span><fmt:formatNumber value="${pricee }" type="currency"/>
										</span></div>
								<a href="clearcart.do" title="清空" class="colors-btn">清空</a>
								<a href="cart.jsp" title="去下单" class="colors-btn">去下单</a>
								<div class="clear"></div>
							</li>
						 </ol>
						 </c:if>
					</div>
				</div>                    
                  </section>
                </div>
                <h1 class="logo"><a href="index.jsp" title="泽恩科技">
                  <img title="Logo" alt="泽恩科技" src="images/logo.gif" />
                  </a></h1>
                  <br/><br/><br/><br/><br/><br/><br/>
                <nav id="smoothmenu1" class="ddsmoothmenu mainMenu" style="z-index: 1;">
                  <ul id="nav"  >
                    <li class="active"><a href="index.jsp" title="首页">首页</a></li>
                    <li class=""><a href="about_us.jsp" title="关于我们">关于我们</a></li>
                    <li class=""><a href="contact_us.jsp" title="请您留言">请您留言</a></li>
                    <li class=""><a href="" title="电脑配件">电脑配件</a>
                    <ul>
                    <c:if test="${not empty comLists}">
                    <c:forEach var="list"  items="${comLists}">
                    <li><a href="getGoodInfo.do?id=1&clazz=${list.clazzid }&part=${list.id}">${list.part}</a></li>    	
    				</c:forEach> 
    				</c:if>
                      </ul>
                    </li>
                    <li class=""><a href="" title="网络产品">网络产品</a>
                    <ul>
                    <c:if test="${not empty webLists}">
                        <c:forEach var="list"  items="${webLists}">
	                    <li><a href="getGoodInfo.do?id=1&clazz=${list.clazzid }&part=${list.id}">${list.part}</a></li>    	
	    				</c:forEach> 
	    				</c:if>
                      </ul>                    
                    </li>
                    <li class=""><a href="" title="品牌">品牌</a>
                    <ul><c:if test="${not empty brandLists}">
                         <c:forEach var="list"  items="${brandLists}">
	                    <li><a href="">${list.brand}</a></li>    	
	    				</c:forEach>  
	    				</c:if>                   
               	         </ul>
                    </li>                    
                  </ul>
                </nav>                 
              </header>
            </div>          
            <!--Banner Block-->
            <section class="banner-wrapper">            
              <div class="banner-block container" >
              	<div style="position: relative;"  ><font color="white"></font>                	
              	<div class="pullDown" style="margin-top: 4px;">				
				<ul class="pullDownList" style="height: 408px; width: 300px;padding-top: 30px;">
					<li class="menulihover" style="margin-top:  10px;padding-left: 30px;">
						<i class="listi1"></i>
						<a href="getGoodInfo.do?id=1&clazz=1&part=1" target="_blank">CPU</a>
						
						<span></span>
					</li>
					<li style="padding-left: 30px;">
						<i class="listi2"></i>
						<a href="getGoodInfo.do?id=1&clazz=1&part=7" target="_blank">显示卡</a>
						/<a href="getGoodInfo.do?id=1&clazz=1&part=3" target="_blank">内存条</a>
						<span></span>
					</li>
					<li style="padding-left: 30px;">
						<i class="listi3"></i>
						<a href="getGoodInfo.do?id=1&clazz=1&part=4" target="_blank">主板</a>
						/<a href="getGoodInfo.do?id=1&clazz=1&part=2" target="_blank">硬盘</a>
						<span></span>
					</li>
					<li style="padding-left: 30px;">
						<i class="listi4"></i>
						<a href="getGoodInfo.do?id=1&clazz=1&part=5" target="_blank">机箱</a>
						/<a href="getGoodInfo.do?id=1&clazz=1&part=6" target="_blank">电源</a>
						/<a href="getGoodInfo.do?id=1&clazz=1&part=8" target="_blank">风扇</a>
						<span></span>
					</li>
					<li style="padding-left: 30px;">
						<i class="listi5"></i>
						<a href="getGoodInfo.do?id=1&clazz=1&part=9" target="_blank">键盘</a>
						
						<span></span>
					</li>
					<li style="padding-left: 30px;">
						<i class="listi6"></i>
						<a href="getGoodInfo.do?id=1&clazz=1&part=10" target="_blank">耳机</a>
						
						<span></span>
					</li>
					<li style="padding-left: 30px;">
						<i class="listi7"></i>
						<a href="getGoodInfo.do?id=1&clazz=1&part=11" target="_blank">U盘</a>
						
						<span></span>
					</li>
					<li style="padding-left: 30px;">
						<i class="listi8"></i>
						<a href="getGoodInfo.do?id=1&clazz=2&part=14" target="_blank">网卡</a>				
						
						<span></span>
					</li>
					<li style="padding-left: 30px;">
						<i class="listi9"></i>
						<a href="getGoodInfo.do?id=1&clazz=2&part=12" target="_blank">路由器</a>
						
						<span></span>
					</li>
					<li style="padding-left: 30px;">
						<i class="listi10"></i>
						
						<a href="getGoodInfo.do?id=1&clazz=2&part=13" target="_blank">交换机</a>
						
						
						<span></span>
					</li>
					<li style="padding-left: 30px;">
						<i class="listi11"></i>
						<a href="getGoodInfo.do?id=1&clazz=2&part=15" target="_blank">ADSL调试解调器</a>
						
						<span></span>
					</li>
					<li style="padding-left: 30px;">
						<i class="lis ti12"></i>
						<a href="getGoodInfo.do?id=1&clazz=2&part=16" target="_blank">光纤调制解调器</a>
						<span></span>
					</li>
					
				</ul>
							
					 
							<!-- 下拉详细列表具体分类 -->	

			</div>
              	
              	
              	</div>
                <div class="flexslider" style="margin-left: 303px;margin-top: 3px;">
                  <ul class="slides" style="display: inline;float: left;">
                  <c:if test="${empty ShowCaseLists }">
                  <li><img title="" alt="橱窗商品" src="images/com.jpg" /></li>
                    
                  </c:if>
                  <c:if test="${not empty ShowCaseLists }">
                  <c:forEach var="a" items="${ShowCaseLists }">
                  <li><a href="detailview.do?id=${a.goodhref }" target="_blank"><img title="" alt="" src="${a.imgsrc }" /></a></li>
                    
                  </c:forEach>
                  </c:if>
                  
                     </ul>
                </div>
                
              </div>
            </section>
          
            <!--Content Block-->
            <section class="content-wrapper" style="position:absolute; top:680px;">
              <div class="content-container container" style="position: relative;;">
                <div class="heading-block">
                  <h1>特色产品</h1>
                  <ul class="pagination">
                    <li class="grid"><a href="#" title="更多">更多</a></li>
                  </ul>
                </div>
                <div class="feature-block">
                  <ul id="mix" class="product-grid">    
                  <c:if test="${not empty featureLists}">              
                    <c:forEach var="list"  items="${featureLists}">  
                    <li>
                      <div class="pro-img"><img title="特色产品" alt="特色产品" src="${list.picsrc }" /></div>
                      <div class="pro-hover-block">
                        <h4 class="pro-name">${list.model }${list.style }</h4>
                        <div class="link-block"> 
                       </div>
                        <div class="pro-price">¥${list.price }</div>
                      </div>
                      <div class="pro-btn-block" align="left" style="font-size: 14px;padding-left:8px;display: inline;"> <a  href="addCart.do?id=${list.id }&amount=1" title="添加到购物车" >添加到购物车</a> </div>
                    <div class="pro-btn-block" align="right" style="font-size: 14px;padding-left:80px;  display: inline;"> <a  href="detailview.do?id=${list.id }" title="查看详情" target="_blank">查看详情</a> </div>
                    </li>                      	
    				</c:forEach>
    				</c:if> 
                  </ul>
                </div>
                <div class="heading-block">
                  <h1>新品上架</h1>
                </div>
                <div class="new-product-block">
                <h6>电脑配件</h6>
                  <ul class="product-grid">
                  <c:if test="${not empty ComRecentLists}">
                  <c:forEach var="list"  items="${ComRecentLists}"> 
                    <li>
                      <div class="pro-img">
                      <a href="detailview.do?id=${list.id }" target="_blank">
                      <img title="" alt="" src="${list.picsrc }" />
                      </a>
                        </div>
                      <div class="pro-content">
                        <p>${list.model }${list.style }</p>
                      </div>
                      <div class="pro-price">¥${list.price}</div>
                      <div class="pro-btn-block"> 
                      <a class="add-cart left" href="addCart.do?id=${list.id }&amount=1" title="添加到购物车"  >添加到购物车</a> 
                      <a class="add-cart right" href="detailview.do?id=${list.id }" title="查看详情" target="_blank">查看详情</a> 
                        
                        <div class="clearfix"></div>
                      </div>
                    </li>
                    </c:forEach>
                    </c:if>
                  </ul>
                  <h6>网络产品</h6>
                  <ul class="product-grid">
                  <c:if test="${not empty WebRecentLists}">
                  <c:forEach var="list"  items="${WebRecentLists}">  
                    <li>
                      <div class="pro-img">
                        <a href="detailview.do?id=${list.id }" target="_blank">
                      <img title="" alt="" src="${list.picsrc }" />
                      </a>
                      </div>
                      <div class="pro-content">
                        <p>${list.model }${list.style }</p>
                      </div>
                      <div class="pro-price">¥${list.price }</div>
                      <div class="pro-btn-block"> 
                      <a class="add-cart left" href="addCart.do?id=${list.id }&amount=1" title="添加到购物车"  >添加到购物车</a>  
                      <a class="add-cart right" href=" detailview.do?id=${list.id }" title="查看详情" target="_blank">查看详情</a> 
                      </div>
                      <div class="pro-link-block"> 
                        <div class="clearfix"></div>
                      </div>
                    </li>
                    </c:forEach>
                    </c:if>
                  </ul>
                </div>
                <div class="news-letter-container">
                  <div class="free-shipping-block">
                    <h1>垂询电话：0311-87221556</h1>
                    <p>我们会尽快将订单送到您手中！</p>
                  </div>
                </div>
              </div>
            </section>
    </div> 
            <!--Footer Block-->
            <section class="footer-wrapper" style="position:absolute; top:2000px;">

              <footer class="container">
                <div class="link-block">
                  <ul>
                    <li class="link-title"><a href="about_us.html" title="关于我们">关于我们</a></li>
                    <li><a href="#" title="常见问题">常见问题</a></li>
                    <li><a href="#" title="隐私政策">隐私政策</a></li>
                  </ul>
                  <ul>
                    <li class="link-title"><a href="#" title="客户服务">客户服务</a></li>
                    <li><a href="#" title="退换货">退换货</a></li>
                    <li><a href="#" title="安全购物">安全购物</a></li>
                    <li><a href="" title="联系我们">联系我们</a></li>
                  </ul>
                  <ul>
                    <li class="link-title"><a href="#" title="条款">条款</a></li>
                    <li><a href="#" title="新闻室">新闻室</a></li>
                    <li><a href="#" title="帮助">帮助</a></li>
                  </ul>
                  <ul>
                    <li class="link-title"><a href="#" title="购物指南">购物指南</a></li>
                    <li class="aboutus-block"> </li>
                  </ul>
                  <ul class="stay-connected-blcok">
                    <li class="link-title"><a href="#" title="保持连接…">保持连接…</a></li>
                    <li>
                         <ul class="social-links">
                            <li><a data-tooltip="Like us on facebook" href="#"><img alt="facebook" src="images/facebook.png"></a></li>
                            <li><a data-tooltip="Subscribe to RSS feed" href="#"><img alt="RSS" src="images/rss.png"></a></li>
                            <li><a data-tooltip="Follow us on twitter" href="#"><img alt="twitter" src="images/twitter.png"></a></li>
                            <li><a data-tooltip="Follow us on Dribbble" href="#"><img alt="dribbble" src="images/dribbble.png"></a></li>
                            <li><a data-tooltip="Follow us on Youtube" href="#"><img alt="youtube" src="images/youtube.png"></a></li>
                            <li><a data-tooltip="Follow us on skype" href="#"><img alt="skype" src="images/skype.png"></a></li>
                         </ul>
                         <div class="payment-block"><img src="images/payment.png" alt="付款"></div>
                    </li>
                  </ul>
                </div>
                <div class="footer-bottom-block">
                  <ul class="bottom-links">
                    <li><a href="index-2.html" title="主页">主页</a></li>
                    <li><a href="#" title="页面">页面</a></li>
                    <li><a href="about_us.html" title="关于">关于</a></li>
                    <li><a href="contact_us.html" title="联系">联系</a></li>
                  </ul>
                  <p class="copyright-block">  2015 石家庄泽恩网络科技有限公司,版权所有 <a href="#"  target="_blank"></a></p>
                </div>
                <div style="width: 100% ;text-align: center;">备案号：<a href="http://www.miitbeian.gov.cn/"></a>冀ICP备15010088号</div>
                
              </footer>
            </section>
</body>
</html>