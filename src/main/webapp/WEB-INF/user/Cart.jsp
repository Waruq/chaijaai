<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<body>

			<!-- MAIN CONTENT -->
			<div id="main" role="main">
				<div class="collection_info">

				</div>
				<div class="container">

					<div class="row">
						<div class="main_content  col-sm-12">
							<c:if test="${fn:length(cartList) < 1}">
							<div class="cart_page">
								<div id="cart_loader">
									<div class="global_loader"></div>
								</div>

								<h1 class="page_heading">Shopping Cart</h1>

								<div id="cart_content">

									<div class="cart_empty">
										<p class="alert alert-warning">It appears that your cart is currently empty</p>

										<h4><a href="../collections">Browse collections to find the products you are interested</a></h4>
									</div>

								</div>
							</div>
							</c:if>
							<c:if test="${fn:length(cartList) > 1}">
							<div class="cart_page">
								<div id="cart_loader" class="loader_off">
									<div class="global_loader"></div>
								</div>

								<h1 class="page_heading">Shopping Cart</h1>

								<div id="cart_content">

									<form action="/cart" method="post" class="">

										<table class="cart_list">
											<thead>
												<tr>
													<th>Product</th>
													<th>Price</th>
													<th>Quantity</th>
													<th>Subtotal</th>
													<th></th>
												</tr>
											</thead>

											<tbody>
											   <c:forEach items="${cartList}" var="item">	 
												<tr class="cart_item" data-id="18522755203">
													<td class="cell_1">
														<div class="cart_item__img">
															<a href="/products/teas-etc-fowering-green-tea-sampler-s0601-8-count">
																<img src="${pageContext.servletContext.contextPath}/image/${item.product.images[0]}">
															</a>
														</div>

														<div class="cart_item__info">
															<h3 class="cart_item__name product_name">
																<a href="/products/teas-etc-fowering-green-tea-sampler-s0601-8-count">
																	${item.product.name}
																</a>
															</h3>


															<!-- <p class="cart_item__variant">L</p> -->


															<div class="cart_item__details">
																<p class="item_type"><span>Product type:</span>${item.product.type.name}</p>
																<p class="item_vendor"><span>Vendor:</span>Chai Jaai</p>
																<p class="item_weight"><span>Weight:</span>${item.product.weight}</p>
															</div>


														</div>
													</td>

													<td class="cell_2 cart_price">
														<span class="money" data-currency-usd="$ 16.00">$ ${item.product.price}</span>
													</td>

													<td class="cell_3">
														<div class="quantity_box">
															<input class="quantity_input" id="updates_18522755203" name="updates[]" type="text">${item.quantity}</input>
															<span class="quantity_modifier quantity_down"><i class="fa fa-minus"></i></span>
															<span class="quantity_modifier quantity_up"><i class="fa fa-plus"></i></span>
														</div>

														<div>
															<button class="btn cart_update">Update</button>
														</div>
													</td>

													<td class="cell_4 cart_price">
														<span class="money" data-currency-usd="$ 16.00">${item.product.price * item.quantity}</span>
													</td>

													<td class="cell_5">
														<a class="cart_item__remove" title="1" href="#"><i class="fa fa-trash"></i></a>
													</td>
												</tr>
											 </c:forEach>	
											</tbody>

											<tfoot>
												<tr class="cart_buttons">
													<td colspan="5">
														<a class="btn btn-alt cart_continue" href="/collections">Continue shopping</a>
														<button class="btn cart_update">Update cart</button>
														<a class="btn" id="cart_clear" href="#">Clear cart</a>
													</td>
												</tr>

												<tr class="cart_summary">
													<td colspan="5">
														<p class="cart_summary__row">Total weight <span>1.54 lb</span></p>
														<p class="cart_summary__row">Total price <span class="money" data-currency-usd="$ 16.00">$ 16.00</span></p>
														<p class="alert alert-warning cart_summary__notification">
															Computers process all orders in USD. While the content of your cart is currently displayed in USD, you will checkout using USD at the most current exchange rate.
														</p>
														<p class="cart_summary__instructions">
															<label>Special instructions for seller</label>
															<textarea class="form-control" name="note"></textarea>
														</p>
														<div class="cart_summary__checkout">
															<ul class="cart_summary__methods">
																<li><img src="//cdn.shopify.com/s/files/1/1239/5002/t/2/assets/cc-amex.png?6879570461996895649" alt=""></li>
																<li><img src="//cdn.shopify.com/s/files/1/1239/5002/t/2/assets/cc-discover.png?6879570461996895649" alt=""></li>
																<li><img src="//cdn.shopify.com/s/files/1/1239/5002/t/2/assets/cc-visa.png?6879570461996895649" alt=""></li>
																<li><img src="//cdn.shopify.com/s/files/1/1239/5002/t/2/assets/cc-mastercard.png?6879570461996895649" alt=""></li>
																<li><img src="//cdn.shopify.com/s/files/1/1239/5002/t/2/assets/cc-maestro.png?6879570461996895649" alt=""></li>
																<li><img src="//cdn.shopify.com/s/files/1/1239/5002/t/2/assets/cc-cirrus.png?6879570461996895649" alt=""></li>
																<li><img src="//cdn.shopify.com/s/files/1/1239/5002/t/2/assets/cc-paypal.png?6879570461996895649" alt=""></li>
																<li><img src="//cdn.shopify.com/s/files/1/1239/5002/t/2/assets/cc-google.png?6879570461996895649" alt=""></li>
															</ul>
															<button type="submit" name="checkout" class="btn">Proceed to checkout</button>
														</div>
													</td>
												</tr>
											</tfoot>
										</table>
									</form>

								</div>
							</div>
							</c:if>
						</div>
					</div>
				</div>
			</div>
</body>
