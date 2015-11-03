<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="top-header">
		<div class="container">
			<div class="row">
				<div class="col-md-7">
					<div class="home-account">
						<c:choose>
							<c:when test="${memberInfo.email eq null }">
								<a href="loginForm">로그인</a>
								<a href="joinForm">회원가입</a>
								<a href="#">고객센터</a>
								<a href="#"><img src="images/face4.png"></a>
							</c:when>
							<c:otherwise>
								<span><u>${memberInfo.name }</u>님</span>
								<a href="#">내정보</a>
								<a href="logout">로그아웃</a>
								<a href="#"><img src="images/face4.png"></a>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
				<div class="col-md-6">
					<div class="cart-info"></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>