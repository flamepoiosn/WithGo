<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
@import
url
(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
body { #loginForm span{ float:right;
	
}
</style>
<meta charset="utf-8">
<title>About - Grill Template</title>
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


	<table align="center">
		<tr>
			<td colspan="2"  align="center">
				<font size="5">
					<strong>회원가입</p></strong>
				</font>
			</td>
		</tr>

		<tr>
			<td>아이디</td>
			<td><input type="text" name="user_name" /><input type="submit"
				name="submit" value="중복확인" /></td>
		</tr>

		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="user_pw" /></td>
		</tr>
		<tr>
			<td>비밀번호 확인</td>
			<td><input type="text" name="user_pw2" /></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="user_id" /></td>
		</tr>
		<tr>
			<td>성별</td>
			<td><input type="radio" name="user_car" />여자&nbsp;&nbsp;&nbsp;&nbsp;<input
				type="radio" name="user_car" />남자</td>

		</tr>
		<tr>
			<td>생년월일</td>
			<td><select name="user_birth_year">
					<option value="2000" selected>1980</option>
					<option value="2001" selected>1981</option>
					<option value="2002" selected>1982</option>
					<option value="2003" selected>1983</option>
					<option value="2004" selected>1984</option>
					<option value="2000" selected>1985</option>
					<option value="2001" selected>1986</option>
					<option value="2002" selected>1987</option>
					<option value="2003" selected>1988</option>
					<option value="2004" selected>1989</option>
					<option value="2000" selected>1990</option>
					<option value="2001" selected>1991</option>
					<option value="2002" selected>1992</option>
					<option value="2003" selected>1993</option>
					<option value="2004" selected>1994</option>
					<option value="2002" selected>1995</option>
					<option value="2003" selected>1996</option>
					<option value="2004" selected>1997</option>
					<option value="2000" selected>1998</option>
					<option value="2001" selected>1999</option>
					<option value="2000" selected>2000</option>
					<option value="2001" selected>2001</option>
					<option value="2002" selected>2002</option>
					<option value="2003" selected>2003</option>
					<option value="2004" selected>2004</option>
			</select> 년 <select name="user_birth_month">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
			</select> 월 <select name="user_birth_day">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
					<option value="16">16</option>
					<option value="17">17</option>
					<option value="18">18</option>
					<option value="19">19</option>
					<option value="20">20</option>
					<option value="21">21</option>
					<option value="22">22</option>
					<option value="23">23</option>
					<option value="24">24</option>
					<option value="25">25</option>
					<option value="26">26</option>
					<option value="27">27</option>
					<option value="28">28</option>
					<option value="29">29</option>
					<option value="30">30</option>
					<option value="31">31</option>
			</select> 일</td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input type="text" name="user_phone number" /></td>
		</tr>
		<tr>
			<td>차량소유여부</td>
			<td><input type="radio" name="user_car" />예&nbsp;&nbsp;&nbsp;&nbsp;<input
				type="radio" name="user_car" />아니오</td>

		</tr>
		<tr>
			<td>주소</td>
			<td><input type="text" name="user_address" /></td>
		</tr>
		<!-- <tr>
			<td>직업</td>
			<td><select name="user_job">
					<option value="student">학생</option>
					<option value="teacher">교사</option>
					<option value="developer">개발자</option>
					<option value="publisher">퍼블리셔</option>
					<option value="driver">운전사</option>
					<option value="architecture">건축가</option>
					<option value="actor">배우</option>
			</select></td>
		</tr> -->
		<tr>
			<td>자기소개</td>
			<td><textarea name="comment" cols="50" rows="5"></textarea></td>
		</tr>
		<tr>
			<td>이미지사진</td>
			<td><input type=file size=40></td>
		</tr>


		<tr>
		
			<td colspan="2"  align="center">	
			<td><input type="submit" class="btn btn-primary form-control" value="회원가입" onclick="location.href='loginForm'"></td>
			
			
			
			
		</tr>
	</table>
</body>
</html>
