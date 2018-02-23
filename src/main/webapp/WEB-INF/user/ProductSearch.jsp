<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

			<div class="header_info">
				<div class="container">

					<ul class="homepage_info_cnt">
						<c:if test="${sessionScope.type}">
							<li><a>Type</a></li>
						</c:if>	
						<c:if test="${not sessionScope.type}">	
							<li><a>Flavor</a></li>
						</c:if>
						<li>
								<h3 class="page-title">${sessionScope.name}</h3>						
						</li>
					</ul>
				</div>
			</div>
			<!-- BREADCRUMBS -->
			<div class="breadcrumb_wrap">
				<div class="container">
					<ul class="breadcrumb">
						<li><a href="../../default.htm" class="homepage-link" title="Back to the frontpage">Home</a></li>
						<li><a href="../green-tea" title="">Green Tea</a> </li>
						<li><span class="page-title">Black Tea</span></li>
					</ul>
				</div>
			</div>
			<!-- MAIN CONTENT -->
			<div id="main" role="main">
				<div class="collection_info">

				</div>
				<div class="container">

					<div class="row">
						<div class="main_content  col-sm-9 col-sm-push-3">
								<h1 class="page_heading">${sessionScope.name}</h1>
							<ul class="tags clearfix">
									<c:if test="${active == 'All'}">
										<c:set var="activeAll" value="active"/>
									</c:if>	
									<li class="${activeAll}"><a href="#">All</a></li>
								<c:if test="${sessionScope.type}">
									<c:forEach items="${flavorList}" var="flavor">
										<c:if test="${flavor.name == active}">
											<c:set var="activeTag" value="active"/>
										</c:if>
										<li class="${activeTag}"><a href="${pageContext.servletContext.contextPath}/tea?type=${sessionScope.name}&flavor=${flavor.name}" title="${flavor.name}">${flavor.name}</a></li>
									</c:forEach>
								</c:if>
								<c:if test="${not sessionScope.type}">
									<c:forEach items="${typeList}" var="type">
										<c:if test="${type.name == active}">
											<c:set var="activeTag" value="active"/>
										</c:if>
										<li class="${activeTag}"><a href="${pageContext.servletContext.contextPath}/tea?flavor=${sessionScope.name}&type=${type.name}" title="${type.name}">${type.name}</a></li>
									</c:forEach>
								</c:if>
							</ul>


							<!-- collection image & description -->

							<div class="row collection_info">
								<div class="col-sm-3 collection_img"><img src="../../images/files/1/1239/5002/collections/sa-japanese-green-tea-green-tea-gift-set_05_medium.png" alt="Green Tea" /></div>
								<div class="col-sm-9 collection_desc">

									<div class="rte">
										Green tea, black tea, white tea, flavored tea and many others to surprise and astonish you! We are experts in tea and we will teach you this art with pleasure! If you are already a tea lover, you will find a real paradise of tea aromas and tastes visiting our Tea store. Our goal is to fill your cup with joy you can share with guests and friends leaving far away boring fuss. Turn your tea time into a special ceremony we have cared about proposing you the products of premium quality only. This old drink with a long history and deserved love of millions is worth of a proper attitude and we are glad to share with you a nice collection of teapots, mugs, cups, kettles, tea sets and other useful accessories which will add your tea time with necessary charm and luxury. We have tea blends for any situation and mood: taste our teas to wake up, relax, rejuvenate. Do you want some exotic tea? You are welcome.
									</div>

								</div>
							</div>




							<!-- products sorting -->
							<div class="product_listing_controls">
								<ul class="product_listing_toggle">
									<li id="toggle_grid" class="active"><i class="fa fa-th"></i></li>
									<li id="toggle_list"><i class="fa fa-th-list"></i></li>
								</ul>

								<div class="sort_by">
									<label>Sort by</label>

									<select id="sort_by_select" class="form-control">
			<option value="manual">Featured</option>
			<option value="best-selling">Best selling</option>
			<option value="title-ascending">Name: A to Z</option>
			<option value="title-descending">Name: Z to A</option>
			<option value="price-ascending">Price: low to high</option>
			<option value="price-descending">Price: high to low</option>
			<option value="created-ascending">Oldest to newest</option>
			<option value="created-descending">Newest to oldest</option>
		</select>
								</div>

								<div class="show_products">
									<label>Show</label>

									<select id="show_products_select" class="form-control">
			<option value="6">6</option>
			<option value="9">9</option>
			<option value="15">15</option>
			<option value="all">All</option>
		</select>
								</div>
							</div>

							

							<div id="collection_sorted">
								<!-- products listing -->
								<div class="product_listing_main row">
									<c:forEach items="${productList}" var="product" varStatus="loop">
									<c:if test="${loop.index eq 0 || loop.index eq 3 || loop.index eq 6 || loop.index eq 9}"><c:set var="itemclass" value="item3_1"/> </c:if>
									<c:if test="${loop.index eq 1 || loop.index eq 4 || loop.index eq 7 || loop.index eq 10}"><c:set var="itemclass" value="item3_2"/> </c:if>
									<c:if test="${loop.index eq 2 || loop.index eq 5 || loop.index eq 8 || loop.index eq 11}"><c:set var="itemclass" value="item3_3"/> </c:if>
									<div class="product  col-sm-6 col-md-4 product_collection ${itemclass } item2_1">
										<div class="product_wrapper">
											<div class="product_img">
												<a class="img_change" href="products/black-tea-samples-chinese-breakfast">
													<img src="${pageContext.servletContext.contextPath}/image/${product.images[0]}" alt="${product.name}" />
													<img class="img__2" src="../../images/files/1/1239/5002/products/black-tea-samples-chinese-breakfast_02_medium.png" alt="${product.name}" />

												</a>
												<div class="product_links">
													<div class="product_btn_wrapper">
														<a class="quick_view_btn" href="#"><i class="material-icons-visibility"></i>Quick view</a>

														<div class="product_links_border"></div>

														<form method="post" action="/cart/add">


															<a class="btn_options" href="${product.id}" title="Add to cart"><i class="material-icons-local_grocery_store"></i> Add to cart</a>


														</form>
													</div>
												</div>
											</div>

											<div class="product_info">
												<div class="product_name">
													<a href="/tea/${product.id}/${product.name}">${product.name}</a>
												</div>

												<div class="product_desc product_desc__long">${product.description}</div>
												<div class="product_desc product_desc__short">${product.description}</div>

												<div class="border"></div>

												<div class="product_price">
													<span class="money_text"></span>
													<span class="money">${product.price}</span>
<!-- 													<span class="money money_sale">$ 1}.00</span>
 -->												</div>

											</div>
										</div>
									</div>
									</c:forEach>
								</div>
								
								<!-- pagination -->
								<div class="product_listing_controls">



									<p class="products_count">

										1&nbsp;â&nbsp;2&nbsp;products of 2
									</p>


								</div>
							</div>



						</div>




						<div class="sidebar col-sm-3 sidebar_left col-sm-pull-9">


							<div class="sidebar_widget sidebar_widget__collections">
								<h3 class="widget_header">Collections</h3>

								<div class="widget_content">
									<ul class="list_links">
										<li class="all-teas">
											<a href="#" title="All Teas">All Teas</a>
										</li>
										<c:forEach items="${typeList}" var="type">
											<li class="black-tea">
												<a href="${pageContext.servletContext.contextPath}/tea/type/${type.name}">${type.name}</a>
											</li>
										</c:forEach>

									</ul>
								</div>
							</div>
							<div class="sidebar_widget sidebar_widget__types">
								<h3 class="widget_header">Product Flavors</h3>

								<div class="widget_content">
									<ul class="list_links">
									  <c:forEach items="${flavorList}" var="flavor">
										<li class="Best sellers"><a href="${pageContext.servletContext.contextPath}/tea/flavor/${flavor.name}" >${flavor.name}</a></li>
									  </c:forEach>
									</ul>
								</div>
							</div>



							<div class="sidebar_widget sidebar_widget__products">
								<h3 class="widget_header">Best sellers</h3>
								<div class="widget_content">
									<ul class="list_products">

										<li class="product">
											<div class="product_img">
												<a href="products/black-tea-samples-chinese-breakfast">
													<img src="../../images/files/1/1239/5002/products/black-tea-samples-chinese-breakfast_01_compact.png" alt="Black Tea Samples Chinese Breakfast" />
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
										</li>

										<li class="product">
											<div class="product_img">
												<a href="products/celebrate-0_75-qt-tea-gift-set">
													<img src="../../images/files/1/1239/5002/products/celebrate-0_75-qt-tea-gift-set_01_compact.png" alt="Celebrate 0.75 qt. Tea Gift Set" />
												</a>
											</div>

											<div class="product_info">
												<div class="product_name">
													<a href="products/celebrate-0_75-qt-tea-gift-set">Celebrate 0.75 qt. Tea Gift Set</a>
												</div>

												<div class="product_price">
													<span class="money">$ 45.00</span>

												</div>


											</div>
										</li>

										<li class="product">
											<div class="product_img">
												<a href="products/celestial-seasonings-tea-sampler">
													<img src="../../images/files/1/1239/5002/products/celestial-seasonings-tea-sampler_01_compact.png" alt="Celestial Seasonings Tea Sampler" />
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
										</li>

									</ul>
								</div>
							</div>


						</div>

					</div>
				</div>
			</div>
			
	<!-- Modal structure -->
	<div id="modal" style="padding:10px;">
		<!-- data-iziModal-fullscreen="true"  data-iziModal-title="Welcome"  data-iziModal-subtitle="Subtitle"  data-iziModal-icon="icon-home" -->
		<!-- Modal content -->
		<div class="close">
		<!-- 	<a data-izimodal-close="">×</a> -->
		<a title="Close" id="quick_view__close"  data-izimodal-close=""  class="fancybox-item fancybox-close" href="javascript:;"></a>
		</div>
		
	
			<div class="quick_view__left">
			<div id="img_big"><img src="//cdn.shopify.com/s/files/1/1239/5002/products/teas-etc-fowering-green-tea-sampler-s0601-8-count_01.png?v=1460115790" alt=""></div>
								
							</div>
							<div class="quick_view__right">
							
									<p id="quick_view__name" class="product_name"><a href="/products/teas-etc-fowering-green-tea-sampler-s0601-8-count">Teas Etc Fowering Green Tea Sampler S0601 8 Count</a></p>
									<p id="quick_view__type"><label for="">Product type:</label> <span>Detox teas</span></p>
									<!-- <p id="quick_view__vendor"><label for="">Vendor:</label> <span>TEA CLUB</span></p>
									<p id="quick_view__variants"><label for="">Options:</label>
										<div class="selector-wrapper"><select class="single-option-selector" data-option="option1" id="product-select-option-0"><option value="L">L</option><option value="XL">XL</option><option value="XXL">XXL</option></select></div><select id="product-select" name="id" class="hidden" style="display: none;"><option value="18522755203">L - 1600</option><option value="18522755267">XL - 1400</option><option value="18522755331">XXL - 1200</option></select></p>
									 --><p id="quick_view__price" class="product_price"><span class="money" data-currency-usd="$ 16.00">$ 16.00</span></p>
									<p id="quick_view__availability"><label for="">Availability:</label> <span class="notify_success">Available</span></p>
									<div id="quick_view__form"><label for="quantity">Choose quantity:</label>
										<div class="quantity_box"><input min="1" type="text" name="quantity" value="1" class="quantity_input"><span class="quantity_modifier quantity_down"><i class="fa fa-minus"></i></span><span class="quantity_modifier quantity_up"><i class="fa fa-plus"></i></span></div><button class="btn btn-cart" type="submit" id="quick_view__add">Add to cart</button></div>
								
							</div>
		
		<p class="con"></p>
		
	</div>
	
	<!-- Modal structure -->
	<div id="btncart" style="padding:10px;">
		<!-- data-iziModal-fullscreen="true"  data-iziModal-title="Welcome"  data-iziModal-subtitle="Subtitle"  data-iziModal-icon="icon-home" -->
		<!-- Modal content -->
		<div class="close">
		<!-- 	<a data-izimodal-close="">×</a> -->
		<a title="Close" id="quick_view__close"  data-izimodal-close=""  class="fancybox-item fancybox-close" href="javascript:;"></a>
		</div>
		<div id="cart_added"><h4>Product added to cart</h4>
				<div class="cart_added__row"><div class="cart_added__1" id="cart_added__img">
					<img src="https://cdn.shopify.com/s/files/1/1239/5002/products/black-tea-samples-chinese-breakfast_01.png?v=1460115547" alt=""></div>
					<div class="cart_added__2">
						<span id="cart_added__name" class="product_name">Black Tea Samples Chinese Breakfast - Black / XL / Ground</span>
						<p id="cart_added__quantity">Quantity: <span>3</span></p>
						<a class="btn" href="cart">Go to cart</a>
						<a class="btn btn-alt" id="cart_added__close" href="#">Continue shopping</a>
					</div>
				</div>
		</div>			
		
		<p class="con"></p>
		
	</div>
	
	
	<!-- Trigger to open Modal -->
	<a href="https://github.com/dolce/iziModal" class="trigger">Modal</a>
	
	<script>
	var data;
	var id;
	$(document).on('click','.btn_options',function(){
		id = $(this).attr('href');
		var url ="${pageContext.servletContext.contextPath}/tea/product/"+id;
		$.get(url,function(data){	
			$('#img_big > img').attr('src','${pageContext.servletContext.contextPath}/image/'+data.images[0]);
			$('#quick_view__name > a').text(data.name);
			$('#quick_view__type> span').text(data.type.name);
			$('#quick_view__price> span').text(data.price);
		});
	});
	
	$(document).on('click','#quick_view__add',function(){
		var quantity = $('.quantity_input').val();
		var url="${pageContext.servletContext.contextPath}/cart/add/"+quantity+"/"+id;
		$.get(url,function(data){
			if(data){
				$('#cart_added__img > img').attr('src',$('#img_big > img').attr('src'))
				$('#cart_added__name').text($('#quick_view__name > a').text());
				$('#cart_added__quantity>span').text($('.quantity_input').val());
				return false;
			}
			$('#cart_added').empty().html('<h1>Item cannot be added to cart.Please try again</h1>')
		})
		
	});
	</script>