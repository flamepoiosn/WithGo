<%@page import="com.bitpj.gogo.config.PageNum"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
.category{
	margin-bottom: 15px;	
}

table tr:last-child{
	text-align: center;
}

.page{
	float: none;
}

.wBtn{
	float: right;
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
								<input id="search" type="text" /> <input type="submit" id="search-button" />
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
						<span>Home / <a href="contact-us.html">커뮤니티</a></span>
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
									<c:when test="${category == 'greeting' }"><h4>가입인사</h4></c:when>
									<c:when test="${category == 'free' }"><h4>자유게시판</h4></c:when>
									<c:otherwise><h4>카풀이용후기</h4></c:otherwise>
								</c:choose>
								</div>	
								<table class="table table-condensed">
									<div class="row">
									<tr class="active">
										<th class="col-sm-1">번호</th>
										<th class="col-sm-6">제목</th>
										<th class="col-sm-2">작성자</th>
										<th class="col-sm-2">작성일</th>
										<th class="col-sm-1">조회수</th>
									</tr>
									</div>
									<c:choose>
										<c:when test="${list == '[]' }">
											<td colspan="5" align="center">등록된 글이 없습니다.</td>
										</c:when>
										<c:otherwise>
											<c:set var="pagerow" value="<%=PageNum.PAGEROW %>"></c:set>
											<c:set var="topno" value="${total - (pagerow * (curPage-1))}"></c:set>
											<c:set var="no" value="${topno }"></c:set>
											<c:forEach items="${list }" var="vo">
												<tr>
													<td>${no }</td>
													<c:set var="no" value="${no-1 }"></c:set>
													<td><a href="boardRead?no=${vo.bno }">${vo.title }</a></td>
													<td>${vo.nickname }</td>
													<td>${vo.wdate }</td>
													<td>${vo.hit }</td>
												</tr>
											</c:forEach>
										</c:otherwise>
									</c:choose>		
									<tr>
										<td colspan="5">
											<span class="page">
											<%
												int total = (Integer)request.getAttribute("total");
									 			int curPage = (Integer)request.getAttribute("curPage");
									 			int block = curPage/PageNum.BLOCKSIZE;
									 	 		if(curPage%PageNum.BLOCKSIZE != 0) block += 1;		
									 	 		int firstPage = PageNum.BLOCKSIZE * (block-1) + 1;
												int lastPage = firstPage + PageNum.BLOCKSIZE - 1;
												int totalPage = total / PageNum.PAGEROW;
												if(total % PageNum.PAGEROW != 0) totalPage += 1;
												int lastBlock = ((totalPage-1) / PageNum.BLOCKSIZE) + 1;
												int prevPage = firstPage - 1;
												int nextPage = lastPage + 1;
											%>
											
											<%	if(curPage <= totalPage){ %>
												<ul class="pagination">
											<% 		if(block != 1){ %>
													<li><a href="board?category=${category }&page=<%=prevPage%>">&laquo;</a></li>
											<% 		} 
													for(int i=firstPage; i<=lastPage; i++){
														if(i > totalPage) break;
														if(i == curPage){
											%>
													<li class="active"><a href="#"><%=i %></a>
											<%				
														}
														else{
											%>
													<li><a href="board?category=${category }&page=<%=i%>"><%=i %></a></li>
											<%				
														}
													}
													if(block != lastBlock){
											%>
													<li><a href="board?category=${category }&page=<%=nextPage%>">&raquo;</a></li>
											<%		}%>
												</ul>	
											<%	} %>
											</span>
											
											<span class="wBtn">
											<c:if test="${memberInfo.email != null }">
												<input type="button" class="btn btn-default btn-xs" value="글쓰기" onclick="location.href='boardWriteForm?category=${category}'">
											</c:if>		
											</span>
										</td>
									</tr>	
								</table>
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