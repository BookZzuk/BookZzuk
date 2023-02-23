<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
        <div class="breadcrumb__text">
          <h2>찜 목록</h2>
          <div class="breadcrumb__option">
            <a href="main.do">Home</a>
            <span>찜 목록</span>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Shoping Cart Section Begin -->
<section class="shoping-cart spad">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="shoping__cart__table">
          <table>
            <thead>
              <tr>
                <th><input type="checkbox" /></th>
                <th class="shoping__product">Books</th>
                <th>Price</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td><input type="checkbox" /></td>
                <td class="shoping__cart__item">
                  <img src="img/cart/cart-1.jpg" alt="" />
                  <h5>Vegetable’s Package</h5>
                </td>
                <td class="shoping__cart__price">$55.00</td>
                <td class="shoping__cart__item__close">
                  <span class="icon_close"></span>
                </td>
              </tr>
              <tr>
                <td><input type="checkbox" /></td>
                <td class="shoping__cart__item">
                  <img src="img/cart/cart-2.jpg" alt="" />
                  <h5>Fresh Garden Vegetable</h5>
                </td>
                <td class="shoping__cart__price">$39.00</td>
                <td class="shoping__cart__item__close">
                  <span class="icon_close"></span>
                </td>
              </tr>
              <tr>
                <td><input type="checkbox" /></td>
                <td class="shoping__cart__item">
                  <img src="img/cart/cart-3.jpg" alt="" />
                  <h5>Organic Bananas</h5>
                </td>
                <td class="shoping__cart__price">$69.00</td>
                <td class="shoping__cart__item__close">
                  <span class="icon_close"></span>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-12">
        <div class="shoping__cart__btns">
          <a href="bookList.do" class="primary-btn cart-btn"><i class="fa fa-shopping-cart"></i> CONTINUE SHOPPING</a>
          <a href="#" class="primary-btn cart-btn cart-btn-right">
            <i class="fa fa-shopping-bag"></i> INTO THE CART</a>
        </div>
      </div>
      </div>
    </div>
  </div>
</section>
<!-- Shoping Cart Section End -->
