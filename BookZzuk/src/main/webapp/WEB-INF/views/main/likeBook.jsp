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
                <th class="shoping__product">Books</th>
                <th>Price</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              <tr>
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
          <a href="#" class="primary-btn cart-btn">CONTINUE SHOPPING</a>
          <a href="#" class="primary-btn cart-btn cart-btn-right"
            ><span class="icon_loading"></span> Upadate Cart</a
          >
        </div>
      </div>
      <div class="col-lg-6">
        <div class="shoping__continue">
          <div class="shoping__discount">
            <h5>Discount Codes</h5>
            <form action="#">
              <input type="text" placeholder="Enter your coupon code" />
              <button type="submit" class="site-btn">APPLY COUPON</button>
            </form>
          </div>
        </div>
      </div>
      <div class="col-lg-6">
        <div class="shoping__checkout">
          <h5>Cart Total</h5>
          <ul>
            <li>Subtotal <span>$454.98</span></li>
            <li>Total <span>$454.98</span></li>
          </ul>
          <a href="#" class="primary-btn">PROCEED TO CHECKOUT</a>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Shoping Cart Section End -->
