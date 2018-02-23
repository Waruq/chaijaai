<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!-- BREADCRUMBS -->

<div class="breadcrumb_wrap">
	<div class="container">
		<ul class="breadcrumb">
			<li><a href="../default.htm" class="homepage-link" title="Back to the frontpage">Home</a></li>
			<li><a href="../collections/types@q=Detox%20teas" title="Detox teas">Detox teas</a> </li>
			<li><span class="page-title">Organic Cranberry Black Tea Loose Leaf Bag</span></li>
		</ul>
	</div>
</div>

<div id="main" role="main">
	<div class="collection_info">
			
	</div>
	<div class="container">
		
		<div class="row">
			<div class="main_content  col-sm-12">
				
					<div itemscope itemtype="http://schema.org/Product" class="product-scope">
	<meta itemprop="url" content="https://theme245-tea.myshopify.com/products/organic-cranberry-black-tea-loose-leaf-bag" />
	<meta itemprop="image" content="//cdn.shopify.com/s/files/1/1239/5002/products/organic-cranberry-black-tea-loose-leaf-bag_01_grande.png?v=1460115662" />

	
	
	

	<div class="product_wrap">
		<div class="row">
			<div class="col-sm-5 col-md-4 product_images product_left">
				
					
						
							<div class="elevatezoom_big_wrapper">
								<img id="elevatezoom_big" src="${pageContext.servletContext.contextPath}/image/${product.images[0]}" alt="Organic Cranberry Black Tea Loose Leaf Bag" data-zoom-image="${pageContext.servletContext.contextPath}/image/${images}" />
								<div class="elevatezoom_big_clicker"></div>
							</div>
						

						<%-- <div id="elevatezoom_gallery" class="swiper-container">
							<div class="swiper-wrapper">
								<c:forEach items="${product.images}" var="images" varStatus="loop">
									 <c:if test="${loop.index gt 0 }">
										<a class="swiper-slide" href="#" data-image="../images/files/1/1239/5002/products/organic-cranberry-black-tea-loose-leaf-bag_01_grande.png?v=1460115662" data-zoom-image="../images/files/1/1239/5002/products/organic-cranberry-black-tea-loose-leaf-bag_01_grande.png?v=1460115662">
											<img src="${pageContext.servletContext.contextPath}/image/${images}" alt="${product.name}"  />
										</a>
									 </c:if>	
								</c:forEach>
								
							</div>

							<div id="elevatezoom_gallery__prev" class="swiper_btn btn_prev"></div>
							<div id="elevatezoom_gallery__next" class="swiper_btn btn_next"></div>
						</div> --%>
					
				
			</div>

			<div class="col-sm-7 col-md-8">
				
					
					

					<form action="/cart/add" method="post" enctype="multipart/form-data" id="product-actions">
						<div class="product_info__wrapper">
							<div class="product_info__left">
								<h1 class="product_name">${product.name}</h1>

								<div class="options clearfix">
									<div class="variants-wrapper hidden">
										<select id="product-select" name="id">
											
											<option value="18522722563">Default Title -${product.price}</option>
											
										</select>
									</div>
								</div>

								<div class="product_details">
									<p class="product_details__item product_weight"><b>Weight:</b> <span id="product_weight">${product.weight} ${product.unit.name}</span></p>
									<p class="product_details__item product_sku"><b>SKU:</b> <span id="product_sku">None</span></p>
									<p class="product_details__item product_barcode"><b>Barcode:</b> <span id="product_barcode">None</span></p>
								</div>

								<div class="product_details">
									
										<p class="product_details__item product_collections"><b>Collections:</b> <a href="../collections/all-teas">${product.category.name}</a>, <a href="../collections/green-tea">${product.type.name}</a>, <a href="../collections/mate-tea">${product.flavor.name}</a></p>
									
									<p class="product_details__item product_type"><b>Product type:</b> <a href="../collections/types@q=Detox%20teas" title="Detox teas">${product.type.name}</a></p>
									<p class="product_details__item product_vendor"><b>Vendor:</b> <a href="../collections/vendors@q=TEA%20CLUB" title="TEA CLUB">Chai Jaai</a></p>
									
								</div>
							</div>

							<div class="product_info__right">
								<div id="product_price">
									<p class="price product-price"><span class="money">${product.price}</span></p>
								</div>

<!-- 								<p class="product_details__item" id="product_quantity"><b class="aval_label">Availability:</b> <span></span></p>
 -->
								<div id="purchase">
									<label for="quantity_form">Choose quantity:</label>

									<div class="quantity_box">
										<input id="quantity_form" type="text" name="quantity" value="1" class="quantity_input" />
										<span class="quantity_modifier quantity_down"><i class="fa fa-minus"></i></span>
										<span class="quantity_modifier quantity_up"><i class="fa fa-plus"></i></span>
									</div>

									<button class="btn btn-cart" type="submit" id="add-to-cart">Add to cart</button>
								</div>

								<div class="addthis_sharing_toolbox"></div>
							</div>
						</div>
					</form>
				
			</div>
		</div><!-- /.row -->

		<div class="product_description">
			<h3 class="product_description__title">Description</h3>

			<div class="rte" itemprop="description">
				<h2>Make a pause and have a cup of tea</h2>
<p>We have a wide range of fresh teas and the products to serve them! Our gourmet tea assortments will suit any occasion and any taste.</p>
<p>Green tea, black tea, white tea, flavored tea and many others to surprise and astonish you! We are experts in tea and we will teach you this art with pleasure! If you are already a tea lover, you will find a real paradise of tea aromas and tastes visiting our Tea store.</p>
Our goal is to fill your cup with joy you can share with guests and friends leaving far away boring fuss. Turn your tea time into a special ceremony we have cared about proposing you the products of premium quality only. This old drink with a long history and deserved love of millions is worth of a proper attitude and we are glad to share with you a nice collection of teapots, mugs, cups, kettles, tea sets and other useful accessories which will add your tea time with necessary charm and luxury.<br>
<ul>
<li>We have tea blends for any situation and mood: taste our teas to wake up, relax, rejuvenate</li>
<li>We are ready to please tea beginners and tea gurus</li>
</ul>
<p>Sugar, honey and creamer sets - all you need to enjoy your cup of tea is here. Our Tea store will be a small island of pleasure you are welcome to discover among everyday routine.</p>
			</div>
		</div>

		
	</div><!-- /.product_wrap -->
</div>

<!-- See this: http://wiki.shopify.com/Related_Products -->


				
			</div>

			

			
		</div>
	</div>
</div>
