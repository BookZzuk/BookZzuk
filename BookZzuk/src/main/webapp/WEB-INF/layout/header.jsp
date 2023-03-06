<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<!-- Page Preloder -->
<div id="preloder">
	<div class="loader"></div>
</div>

<!-- Header Section Begin -->
<header class="header">
	<div class="header__top">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6">
				</div>
				<div class="col-lg-6 col-md-6">
					<div class="header__top__right">
						<div class="header__top__right__social">
							<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-linkedin"></i></a>
						</div>
						<div class="header__top__right__auth">
							<c:choose>
								<c:when test="${!empty logId }">
									<a href="logout.do"><i class="fa fa-user"></i>
										Logout(${logName })</a>
								</c:when>
								<c:otherwise>
									<a href="loginForm.do"><i class="fa fa-user"></i> Login</a>
								</c:otherwise>
							</c:choose>
						</div>
						<div class="header__top__right__auth">
							<c:if test='${grade == "admin"}'>
								<a href="qnaAllListPaging.do"><i class="fa fa-user"></i>관리자 페이지</a>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<div class="header__logo">
					<a href="main.do"><img src="img/logo.png" alt="" /></a>
				</div>
			</div>
			<div class="col-lg-6">
				<nav class="header__menu" style="margin-top: 30px; text-align: center;">
					<ul>
						<li><a href="main.do">메인페이지</a></li>
						<li><a href="bookList.do">도서리스트</a></li>
						<li><a href="memberInfo.do">마이페이지</a></li>
						<li><a href="noticePaging.do?nowPage=1&cntPerPage=10">고객 센터</a></li>
					</ul>
				</nav>
			</div>
		</div>
		<div class="humberger__open">
			<i class="fa fa-bars"></i>
		</div>
	</div>
</header>
<!-- Header Section End -->

<!-- Hero Section Begin -->
<c:if test="${main != null }">
	<section class="hero">
</c:if>
<c:if test="${main == null }">
	<section class="hero hero-normal">
</c:if>
<div class="container">
	<div class="row">
		<div class="col-lg-3">
			<div class="hero__categories">
				<div class="hero__categories__all">
					<i class="fa fa-bars"></i> <span>도서분류</span>
				</div>
				<ul>
					<li><a onclick='changeParam("category","소설/시/희곡")'>소설/시/희곡</a></li>
					<li><a onclick='changeParam("category","에세이")'>에세이</a></li>
					<li><a onclick='changeParam("category","여행")'>여행</a></li>
					<li><a onclick='changeParam("category","역사")'>역사</a></li>
					<li><a onclick='changeParam("category","예술/대중문화")'>예술/대중문화</a></li>
					<li><a onclick='changeParam("category","인문학")'>인문학</a></li>
					<li><a onclick='changeParam("category","어린이")'>어린이</a></li>
					<li><a onclick='changeParam("category","자기계발")'>자기계발</a></li>
					<li><a onclick='changeParam("category","만화")'>만화</a></li>
					<li><a onclick='changeParam("category","수험서")'>수험서</a></li>
				</ul>
			</div>
		</div>
		<div class="col-lg-9">
			<div class="hero__search">
				<div class="hero__search__form">
					<form>
						<input type="text" placeholder="찾는 도서명을 입력해주세요" id="searchKey" onkeypress="searchEnter(event)" />
						<button type="button" class="site-btn" onclick="searchParam()"
							id="searchButton">검색</button>
					</form>
				</div>
				<div class="hero__search__phone">
					<div class="hero__search__phone__icon">
						<i class="fa fa-phone"></i>
					</div>
					<div class="hero__search__phone__text">
						<h5 style="padding-top: 15px;">+82 010-1234-5678</h5>
					</div>
				</div>
			</div>
			<c:if test="${main != null }">
				<div class="hero__item set-bg"
					data-setbg="https://img1.daumcdn.net/thumb/R1280x0.fjpg/?fname=http://t1.daumcdn.net/brunch/service/user/7PBF/image/b0KVeRRLDeOtIap0-KnApW1uW8Q"
          style="background-size: contain;">
				</div>
			</c:if>
		</div>
	</div>
</div>
</section>
<script>
	init();
	function searchParam() {
		let Val = document.getElementById("searchKey").value;
		let URLSearch = new URLSearchParams(location.search);
		URLSearch.set("search", String(Val));
		let param = URLSearch.toString();
		location.href="bookList.do?"+param;
		console.log(param);
	}
	function init() {
		let urlParams = new URL(location.href).searchParams;
		let searchParamVal = urlParams.get('search');
		document.getElementById("searchKey").value = searchParamVal
		document.getElementById("searchKey").addEventListener("keyup",
				function(e) {
					if (e.keyCode == 13) {
						document.getElementById("searchButton").click();
					}
				});
	}
  function searchEnter(e) {
    console.log(e.keyCode)
    if (e.keyCode == 13) {
			let Val = document.getElementById("searchKey").value;
		  let URLSearch = new URLSearchParams(location.search);
		  URLSearch.set("search", String(Val));
		  let param = URLSearch.toString();
		  location.href="bookList.do?"+param;
		}
  }
	
  function changeParam(paramname, value) {
    let URLSearch = new URLSearchParams(location.search);
    URLSearch.set(paramname, String(value));
    let param = URLSearch.toString();
    window.open("bookList.do?" + param, "_self");
  }
</script>
<!-- Hero Section End -->