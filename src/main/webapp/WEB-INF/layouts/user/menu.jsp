<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<header>
				<div class="header_isStuck">
					<div class="container">

						<!-- LOGO -->
						<div id="logo" class="logo_main">
							<a href="default.htm">

								<img src="${pageContext.servletContext.contextPath}/resources/user/images/files/1/1239/5002/t/2/assets/logo.png" alt="TEA CLUB" />



							</a>
						</div>

						<div class="header_wrapper">

							<div class="header_toggle_wrapp">
								<div id="header_toggle">
									<div class="one"></div>
									<div class="two"></div>
									<div class="three"></div>
								</div>

								<div id="header_menu">

									<div class="header_social_wrapper">
										<ul class="header_social">
											<li><a href="#"><i class="fa fa-facebook"></i></a></li>

											<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										</ul>
									</div>

									<!-- MEGAMENU -->
									<div id="megamenu">

										<h2 id="megamenu_mobile_toggle">TEA CLUB<i></i></h2>

										<ul class="level_1">










											<li class="level_1_item ">
												<a class="level_1_link" href="collections">
													Tea
													<i class="level_1_trigger"></i>
												</a>



												<ul class="level_2_wrap level_2_big">
													<li>
														<div class="level_2 level_2_links">




															<div class="column_item column_item__1">
																<h4 class="level_2_trigger">BY TYPE<i></i></h4>

																<ul class="level_3">
																	<c:forEach items="${typeList}" var="type">
																		<li><a href="${pageContext.servletContext.contextPath}/tea/type/${type.name}" title="">${type.name}</a></li>			
																	</c:forEach>
																</ul>
															</div>




															<div class="column_item column_item__2">
																<h4 class="level_2_trigger">BY FLAVOR<i></i></h4>

																<ul class="level_3">
																 	<c:forEach items="${flavorList}" var="flavor">
																		<li><a href="${pageContext.servletContext.contextPath}/tea/flavor/${flavor.name}" title="">${flavor.name}</a></li>
																	</c:forEach>
																</ul>
															</div>




															<div class="column_item column_item__3">
																<h4 class="level_2_trigger">BY CAFFEINE LEVEL<i></i></h4>

																<ul class="level_3">

																	<li><a href="collections/pu-erh-tea" title="">High</a></li>

																	<li><a href="collections/green-tea" title="">Medium</a></li>

																	<li><a href="collections/black-tea" title="">Low</a></li>

																	<li><a href="collections/herbal-tea" title="">Caffeine Free</a></li>

																</ul>
															</div>




															<div class="column_item column_item__4">
																<h4 class="level_2_trigger">MOST POPULAR<i></i></h4>

																<ul class="level_3">

																	<li><a href="collections/wellness-tea" title="">Wellness Tea</a></li>

																	<li><a href="collections/organic-matcha" title="">Organic Matcha</a></li>

																	<li><a href="collections/all-teas" title="">Full Leaf Tea</a></li>

																</ul>
															</div>




															<div class="column_item column_item__5">
																<h4 class="level_2_trigger">BY PRICE<i></i></h4>

																<ul class="level_3">

																	<li><a href="collections/white-tea" title="">Exclusive</a></li>

																	<li><a href="collections/mate-tea" title="">Moderate</a></li>

																	<li><a href="collections/black-tea" title="">On Sale</a></li>

																	<li><a href="collections/herbal-tea" title="">Hot Deals</a></li>

																</ul>
															</div>

														</div>
													</li>
												</ul>



											</li>










											<li class="level_1_item ">
												<a class="level_1_link" href="blogs/blog">
							Blog
							
							<i class="level_1_trigger"></i>
						</a>






												<ul class="level_2_wrap level_2_big">
													<li>
														<div class="level_2 level_2_blog">

															<div class="column_item column_item__1  item_with_img">
																<div class="blog_img"><img src="${pageContext.servletContext.contextPath}/resources/user/images/files/1/1239/5002/articles/primula-flowering-tea-set-with-40-ounce-blossom-teapot-with-6-flowering-teas-and-loose-tea-variety-pack_04_1024x1024.png" alt="Make a pause and have a cup of tea." /></div>

																<div class="blog_info">
																	<span class="blog_date">Friday, April 08, 2016</span>

																	<h3 class="blog_title"><a href="blogs/blog/118457731-make-a-pause-and-have-a-cup-of-tea">Make a pause and have a cup of tea.</a></h3>

																	<div class="blog_content">
																		We have a wide range of fresh teas and the products to serve them! Our gourmet tea assortments will suit...
																	</div>


																</div>
															</div>

															<div class="column_item column_item__2  item_with_img">
																<div class="blog_img"><img src="${pageContext.servletContext.contextPath}/resources/user/images/files/1/1239/5002/articles/primula-flowering-tea-set-with-40-ounce-blossom-teapot-with-6-flowering-teas-and-loose-tea-variety-pack_05_1024x1024.png" alt="Do you want some exotic tea?" /></div>

																<div class="blog_info">
																	<span class="blog_date">Friday, April 08, 2016</span>

																	<h3 class="blog_title"><a href="blogs/blog/118457475-do-you-want-some-exotic-tea">Do you want some exotic tea?</a></h3>

																	<div class="blog_content">
																		You are welcome. We are ready to please tea beginners and tea gurus. Searching for a good present? Visit our...
																	</div>


																</div>
															</div>

															<div class="column_item column_item__3 column_item__last item_with_img">
																<div class="blog_img"><img src="${pageContext.servletContext.contextPath}/resources/user/images/files/1/1239/5002/articles/primula-flowering-tea-set-with-40-ounce-blossom-teapot-with-6-flowering-teas-and-loose-tea-variety-pack_02_1024x1024.png" alt="Would you like a cup of tea?" /></div>

																<div class="blog_info">
																	<span class="blog_date">Friday, April 08, 2016</span>

																	<h3 class="blog_title"><a href="blogs/blog/118457411-would-you-like-a-cup-of-tea">Would you like a cup of tea?</a></h3>

																	<div class="blog_content">
																		We have a wide range of fresh teas and the products to serve them! Our gourmet tea assortments will suit...
																	</div>


																</div>
															</div>

														</div>
													</li>
												</ul>



											</li>










											<li class="level_1_item ">
												<a class="level_1_link" href="pages/about-us">
							About
							
							<i class="level_1_trigger"></i>
						</a>






												<ul class="level_2_wrap level_2_big">
													<li>
														<div class="level_2 level_2_products">

															<div class="column_item column_item__1 ">
																<div class="product_img">
																	<a href="products/black-tea-samples-chinese-breakfast">
																		<img src="${pageContext.servletContext.contextPath}/resources/user/images/files/1/1239/5002/products/black-tea-samples-chinese-breakfast_01_large.png" alt="Black Tea Samples Chinese Breakfast" />
																	</a>
																</div>

																<div class="product_info">
																	<div class="product_name">
																		<a href="products/black-tea-samples-chinese-breakfast">Black Tea Samples Chinese Breakfast</a>
																	</div>

																	<div class="product_price">

																		<span class="money">$ 9.00</span>

																		<span class="money compare-at-price">$ 11.00</span>

																	</div>
																</div>
															</div>

															<div class="column_item column_item__2 ">
																<div class="product_img">
																	<a href="products/celestial-seasonings-tea-sampler">
																		<img src="${pageContext.servletContext.contextPath}/resources/user/images/files/1/1239/5002/products/celestial-seasonings-tea-sampler_01_large.png" alt="Celestial Seasonings Tea Sampler" />
																	</a>
																</div>

																<div class="product_info">
																	<div class="product_name">
																		<a href="products/celestial-seasonings-tea-sampler">Celestial Seasonings Tea Sampler</a>
																	</div>

																	<div class="product_price">

																		<span class="money">$ 13.00</span>

																		<span class="money compare-at-price">$ 16.00</span>

																	</div>
																</div>
															</div>

															<div class="column_item column_item__3 ">
																<div class="product_img">
																	<a href="products/grosche-hand-made-premium-12-blooming-tea-variety-pack-green">
																		<img src="${pageContext.servletContext.contextPath}/resources/user/images/files/1/1239/5002/products/grosche-hand-made-premium-12-blooming-tea-variety-pack-green_01_large.png" alt="GROSCHE Hand made premium 12 blooming tea variety pack Green" />
																	</a>
																</div>

																<div class="product_info">
																	<div class="product_name">
																		<a href="products/grosche-hand-made-premium-12-blooming-tea-variety-pack-green">GROSCHE Hand made premium 12 blooming tea varie...</a>
																	</div>

																	<div class="product_price">

																		<span class="money">$ 12.00</span>

																		<span class="money compare-at-price">$ 13.00</span>

																	</div>
																</div>
															</div>

															<div class="column_item column_item__4 column_item__last">
																<div class="product_img">
																	<a href="products/harney-and-sons-earl-grey-tea-4-ounce-tin">
																		<img src="${pageContext.servletContext.contextPath}/resources/user/images/files/1/1239/5002/products/harney-and-sons-earl-grey-tea-4-ounce-tin_01_large.png" alt="Harney and Sons Earl Grey Tea 4 Ounce Tin" />
																	</a>
																</div>

																<div class="product_info">
																	<div class="product_name">
																		<a href="products/harney-and-sons-earl-grey-tea-4-ounce-tin">Harney and Sons Earl Grey Tea 4 Ounce Tin</a>
																	</div>

																	<div class="product_price">

																		<span class="money">$ 9.00</span>

																	</div>
																</div>
															</div>

														</div>
													</li>
												</ul>



											</li>










											<li class="level_1_item level_2_small__wrap">
												<a class="level_1_link" href="pages/contact-us">
							Contacts
							
							<i class="level_1_trigger"></i>
						</a>






												<ul class="level_2_wrap level_2_small">

													<li><a href="collections/white-tea">Exclusive</a></li>

													<li><a href="collections/mate-tea">Moderate</a></li>

													<li><a href="collections/black-tea">On Sale</a></li>

													<li><a href="collections/herbal-tea">Hot Deals</a></li>

												</ul>



											</li>


										</ul>

									</div>

									<!-- HEADER SEARCH -->
									<div class="header_search">
										<i id="header_search_trigger" class="material-icons-search"></i>
										<form id="header_search_form" action="/search" method="get" class="search_form">
											<input id="search-field" name="q" type="text" placeholder="Search store" class="hint" />
											<button id="search-submit" type="submit"><i class="material-icons-search"></i></button>
										</form>
									</div>


									<!-- USER MENU -->
									<ul class="header_user">

										<li><a href="account/login"><i class="material-icons-person"></i></a></li>


									</ul>




									<!-- CURRENCY SWITCHER-->
									<div class="header_currency">
										<label for="currencies"></label>

										<select id="currencies" name="currencies">
						
						
							<option value="USD" selected="selected">USD</option>
							
								
							
								
									<option value="EUR">EUR</option>
								
							
								
									<option value="GBP">GBP</option>
								
							
					</select>
									</div>


								</div>
							</div>
						</div>

						<!-- HEADER CART -->
						<div class="header_cart">
							<a href="cart"><i class="material-icons-local_grocery_store"></i><span id="cart_items">0</span></a>
						</div>

					</div>
				</div>
			</header>