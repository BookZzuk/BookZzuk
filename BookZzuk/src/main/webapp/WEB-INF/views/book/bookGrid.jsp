<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c"%>

<style>
  .pageSelected{
    background-color: green;
  }
</style>

<!-- Product Section Begin -->
<section class="product spad">
  <div class="container">
    <div class="row">
      <div class="col-lg-3 col-md-5">
        <div class="sidebar">
          <div class="sidebar__item">
            <h4>도서분류</h4>
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
          <!-- 최근에 본 항목 -->
          <div class="sidebar__item">
            <div id="recentView">

            </div>
            <div class="latest-product__text">
              <h4>최근 본 상품</h4>
              <div class="latest-product__slider owl-carousel">
                <div class="latest-prdouct__slider__item">
									

                  <!-- <a href="#" class="latest-product__item">
                    <div class="latest-product__item__pic">
                      <img src="img/latest-product/lp-1.jpg" alt="" />
                    </div>
                    <div class="latest-product__item__text">
                      <h6>Crab Pool Security</h6>
                      <span>$30.00</span>
                    </div> -->
                  </a>
                </div>
                <!-- -- 최근에 본항목 3개씩 한div으로 구현할것  -->
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-9 col-md-7">
        <div class="product__discount">
          <div class="section-title product__discount__title">
            <h2>북적북적 서적들</h2>
          </div>
          <div class="row">
            <div class="product__discount__slider owl-carousel">
              <!-- 할인중인 상품 한블럭
              <div class="col-lg-4">
                <div class="product__discount__item">
                  <div
                    class="product__discount__item__pic set-bg"
                    data-setbg="img/product/discount/pd-1.jpg"
                  >
                    <div class="product__discount__percent">-20%</div>
                    <ul class="product__item__pic__hover">
                      <li>
                        <a href="#"><i class="fa fa-heart"></i></a>
                      </li>
                      <li>
                        <a href="#"><i class="fa fa-retweet"></i></a>
                      </li>
                      <li>
                        <a href="#"><i class="fa fa-shopping-cart"></i></a>
                      </li>
                    </ul>
                  </div>
                  <div class="product__discount__item__text">
                    <span>Dried Fruit</span>
                    <h5>
                      <a href="#">Raisin’n’nuts</a>
                    </h5>
                    <div class="product__item__price">
                      $30.00 <span>$36.00</span>
                    </div>
                  </div>
                </div>
              </div>
              할인중인 상품 여기까지 -->
            </div>
          </div>
        </div>
        <div class="filter__item">
          <div class="row">
            <div class="col-lg-5 col-md-5">
              <div class="filter__sort">
                <span>정렬기준</span>
                <select id="sortCol" onchange=chageSortSelect('sortCol',"sortCol")>
                  <option value="title">상품명순</option>
                  <option value="pub_date">출판일순</option>
                  <option value="std_price">가격순</option>
                  <option value="avg_grade">평점순</option>
                </select>
                <span></span>
                <select id="sortMod" onchange=chageSortSelect("sortMod","sortMod")>
                  <option value="asc">오름차순</option>
                  <option value="desc">내림차순</option>
                </select>
              </div>
            </div>
            <!-- 
						<div class="col-lg-4 col-md-4">
							<div class="filter__found">
							<h6>
									<span>16</span> Products found
								</h6>
							</div>
						</div> 
						
            <div class="col-lg-4 col-md-3">
              <div class="filter__option">
                <span class="icon_grid-2x2"></span>
                <span class="icon_ul"></span>
              </div>
            </div>-->
          </div>
        </div>
        <div class="row">
          <!-- 상품 목록 한블럭 -->
          <c:forEach var="book" items="${list }">
            <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="product__item">
                <div
                  class="product__item__pic set-bg"
                  data-setbg="${book.cover }"
                >
                  <ul class="product__item__pic__hover">
                    <li>
                      <a href="#"><i class="fa fa-heart"></i></a>
                    </li>
                    <li>
                      <a href="#"><i class="fa fa-retweet"></i></a>
                    </li>
                    <li>
                      <a href="#"><i class="fa fa-shopping-cart"></i></a>
                    </li>
                  </ul>
                </div>
                <div class="product__item__text">
                  <h6>
                    <a href="bookDetail.do?bid=${book.itemId }"
                      >${book.title }</a
                    >
                  </h6>
                  <h5>${book.salePrice }원</h5>
                </div>
              </div>
            </div>
          </c:forEach>
          <!-- 상품 목록 한블럭 여기까지-->
        </div>

        <div class="product__pagination">
          <!-- <a href="#"><i class="fa fa-long-arrow-left"></i></a>
          <a onclick='changeParam("page",1)'>1</a> <a onclick='changeParam("page",2)'>2</a>
          <a onclick='changeParam("page",3)'>3</a>
          <a href="#"><i class="fa fa-long-arrow-right"></i></a> -->
        </div>
      </div>
    </div>
  </div>
</section>
<script>
  initSortSelected();
  addRecentView();
  pagelist();
  function initSortSelected() {
    const searchParams = new URLSearchParams(location.search);
    const urlParams = new URL(location.href).searchParams;

    let sortColSelect = document.getElementById("sortCol");
    let sortColLen = sortColSelect.options.length;
    let sortColValue = urlParams.get("sortCol");
    let sortModSelect = document.getElementById("sortMod");
    let sortModLen = sortModSelect.options.length;
    let sortModValue = urlParams.get("sortMod");

    for (let i = 0; i < sortColLen; i++) {
      if (sortColSelect.options[i].value == sortColValue) {
        sortColSelect.options[i].selected = true;
      }
    }

    for (let i = 0; i < sortModLen; i++) {
      if (sortModSelect.options[i].value == sortModValue) {
        sortModSelect.options[i].selected = true;
      }
    }
  }

  function chageSortSelect(id,param) {
    const searchParams = new URLSearchParams(location.search);
    const urlParams = new URL(location.href).searchParams;
    let Select = document.getElementById(id);
    let Value = Select.options[Select.selectedIndex].value;
		console.log(Value);
		
		changeParam(param,Value);
  }

  function changeParam(paramname, value) {
    let URLSearch = new URLSearchParams(location.search);
    URLSearch.set(paramname, String(value));
    let param = URLSearch.toString();
    window.open(location.pathname + "?" + param, "_self");
  }

  function addRecentView(){
      let recentView=JSON.parse(localStorage.getItem("recentItem")).reverse();
      let recentTitle=JSON.parse(localStorage.getItem("recentTitle")).reverse();
      let recentCover=JSON.parse(localStorage.getItem("recentCover")).reverse();
      let recentPrice=JSON.parse(localStorage.getItem("recentPrice")).reverse();
      for(i=0;i<recentView.length;i++){
        let a = recentView[i];
        let b = recentCover[i];
        let c = recentTitle[i];
        let d = recentPrice[i]
        // let single='<a href="'+a+'" class=""><img src="'+b+'" alt="" /><h6>'+c+'</h6></a>';
        let single =  '<a href="bookDetail.do?bid='+a+'" class="latest-product__item">'+
'                    <div class="latest-product__item__pic">'+
'                      <img src="'+b+'" alt="" />' +
'                    </div>' +
'                    <div class="latest-product__item__text">'+
'                      <h6>'+c+'</h6>' +
' <span>'+d+'원</span>'+
'                    </div>' +
'                  </a>'
        
        document.getElementsByClassName("latest-prdouct__slider__item")[0].innerHTML+=single;
                  console.log(single);
                }
              }

    function pagelist(){
      const urlParams = new URL(location.href).searchParams;
      let currentPage = urlParams.get('page');
      console.log("총 검색결과 ${count} 건");
      let totalPage="${count}"/20
      let pageContainer = document.getElementsByClassName("product__pagination")[0];
      if(currentPage==null)
      currentPage=1;
      if(currentPage!=1){
        pageContainer.innerHTML+='<a onclick=changeParam("page",'+(currentPage-1)+')><i class="fa fa-long-arrow-left"></i></a>'
      }
      for(i=(currentPage-3);i<=(currentPage*1+3);i++){
        console.log(i,currentPage*1+3);
        if(i>0&&i<=totalPage){
          if (currentPage==i) {
          pageContainer.innerHTML+='<a onclick=changeParam("page",'+i+') class="pageSelected">'+i+'</a>'
          }
          else{
            pageContainer.innerHTML+='<a onclick=changeParam("page",'+i+')>'+i+'</a>'
          }
        }
      }
      if(currentPage<totalPage)
      {
        pageContainer.innerHTML+='<a onclick=changeParam("page",'+(currentPage+1)+')><i class="fa fa-long-arrow-right"></i></a>'
      }
    }
    categorySelBold();
    function categorySelBold(){
      const urlParams = new URL(location.href).searchParams;
      let currentCat = urlParams.get('category');
      let catList=document.getElementsByTagName("a")
      console.log(currentCat)
      for(i=0;i<catList.length;i++){
        if(catList[i].innerHTML==currentCat)
        catList[i].style.fontWeight="bold";
      }
    }

    
    


</script>
<!-- Product Section End -->
