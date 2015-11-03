<%@page import="com.bitpj.gogo.config.PageNum"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<!-- 

Grill Template 

http://www.templatemo.com/free-website-templates/417-grill

-->
<head>
<meta charset="utf-8">
<title>Contact - Grill Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width">

<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/font-awesome.css">
<link rel="stylesheet" href="css/templatemo_style.css">
<link rel="stylesheet" href="css/templatemo_misc.css">
<link rel="stylesheet" href="css/flexslider.css">
<link rel="stylesheet" href="css/testimonails-slider.css">

<style>
#heading {
	/* 	background-image: url(images/community.png); */
	background-color: gray;
	height: 140px;
}

.content{
	margin: 30px;
}
.hit{
	float: right;
	margin-top: 15px;
}

.category{
	float: left;
}

table tr:last-child{
	text-align: right;
}

table tr th:last-child{
	height: 200px;
}

</style>
<script src="js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>
</head>
<body>
	<!--[if lt IE 7]>
            <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
        <![endif]-->

	<header>
		<%@ include file="topheader.jsp"%>
		<div id="main-header">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<div class="logo">
							<a href="index.html"><img src="images/pool2.jpeg"
								title="Grill Template" alt="Grill Website Template"></a>
						</div>
					</div>
					<div class="col-md-7">
						<div class="main-menu">
							<ul>
								<li><a href="dan"><font size=3>단기카풀</font></a></li>
								<li><a href="jang"><font size=3>장기카풀</font></a></li>
								<li><a href="goschool"><font size=3>고 스쿨</font></a></li>
								<li><a href="taxi"><font size=3>택시카풀</font></a></li>
								<li><a href="community"><font size=3>커뮤니티</font></a></li>
								<li><a href="customer"><font size=3>고객센터</font></a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-2">
						<div class="search-box">
							<form name="search_form" method="get" class="search_form">
								<input id="search" type="text" /> <input type="submit"
									id="search-button" />
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>


	<div id="heading">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="heading-content">
						<h2>Community</h2>
						<span>Home / <a href="community">커뮤니티</a></span>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="content">
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-md-offset-1">
					<div class="row">
						<div class="col-md-2">
							<div class="list-group">
								<a href="board?category=greeting" class="list-group-item">가입인사</a>
								<a href="board?category=free" class="list-group-item">자유게시판</a>
								<a href="board?category=review" class="list-group-item">카풀이용후기</a>
							</div>
						</div>
						<div class="col-md-10">
							<div class="row">
								<div class="col-sm-10 col-sm-offset-1">
									<div class="category">
										<c:choose>
											<c:when test="${category == 'greeting' }">
												<h4>가입인사</h4>
											</c:when>
											<c:when test="${category == 'free' }">
												<h4>자유게시판</h4>
											</c:when>
											<c:otherwise>
												<h4>카풀이용후기</h4>
											</c:otherwise>
										</c:choose>
									</div>
									<form method="post" action="boardUpdate">	
										<input type="hidden" name="bno" value="${vo.bno }">
										<table class="table table-condensed">
											<tr>
											<div class="row">
												<th class="col-sm-1">제목</th>
												<td class="col-sm-5">
													<input type="text" class="form-control input-sm" name="title" value="${vo.title }">
												</td>
												<th class="col-sm-1">작성자</th>
												<td class="col-sm-2">${vo.nickname }</td>
												<th class="col-sm-1">작성일</th>
												<td class="col-sm-2">${vo.wdate }</td>					
											</div>	
											</tr>
											<tr>
												<th style="min-height: 200px;">내용</th>
												<td colspan="5">
													<textarea name="content" class="form-control input-sm" rows="15">${vo.content }</textarea>
												</td>
											</tr>
											<tr>
												<td colspan="6">	
													<c:if test="${vo.nickname == memberInfo.nickname }"> 
														<input type="button" class="btn btn-default btn-xs" value="삭제" onclick="location.href='boardDel?category=${vo.category }&no=${vo.bno}'">
														<input type="submit" class="btn btn-default btn-xs" value="수정">
													</c:if>
													<input type="button" class="btn btn-default btn-xs" value="목록" onclick="location.href='board?category=${vo.category}'">
												</td>
											</tr>
									</table>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



	<%@ include file="footer.jsp"%>

	<script src="js/vendor/jquery-1.11.0.min.js"></script>
	<script src="js/vendor/jquery.gmap3.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/main.js"></script>

	<script
		src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDY0kkJiTPVd2U7aTOAwhc9ySH6oHxOIYM&amp;sensor=false">
		
	</script>

	<script>
		var map;

		function initialize() {
			var map_options = {
				center : new google.maps.LatLng(16.8496189, 96.1288854),
				zoom : 15,
				mapTypeId : google.maps.MapTypeId.ROADMAP
			};
			var map = new google.maps.Map(document.getElementById("googleMap"),
					map_options);
		}

		google.maps.event.addDomListener(window, 'load', initialize);
		google.maps.event.addDomListener(window, "resize", function() {
			var center = map.getCenter();
			google.maps.event.trigger(map, "resize");
			map.setCenter(center);
		});
	</script>
</body>
</html>