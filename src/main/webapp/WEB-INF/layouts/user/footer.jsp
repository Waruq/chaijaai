

			<!-- FOOTER -->
			<footer>
				<div class="container">
					<div class="row">
						<div class="col-sm-12 col-md-5 footer_block footer_block__1">
							<!-- LOGO -->
							<div id="logo_2" class="logo_main">
								<a href="default.htm">

									<img src="${pageContext.servletContext.contextPath}/resources/user/images/files/1/1239/5002/t/2/assets/logo2.png" alt="TEA CLUB" />


								</a>
							</div>

							<div class="copyright">
								<p role="contentinfo">Â© 2017 TEA CLUB. All rights reserved. <a target="_blank" rel="nofollow" href="../https@www.shopify.com/default.htm">Powered by Shopify</a></p>
							</div>
						</div>

						<div class="col-sm-6 col-md-3 footer_block footer_block__2">
							<h3>WE ACCEPT:</h3>
							<ul class="payment_icons">
								<li><img src="${pageContext.servletContext.contextPath}/resources/user/images/files/1/1239/5002/t/2/assets/payment_ico_1.png" alt=""></li>
								<li><img src="${pageContext.servletContext.contextPath}/resources/user/images/files/1/1239/5002/t/2/assets/payment_ico_2.png" alt=""></li>
								<li><img src="${pageContext.servletContext.contextPath}/resources/user/images/files/1/1239/5002/t/2/assets/payment_ico_3.png" alt=""></li>
							</ul>
						</div>


						<div class="col-sm-6 col-md-4 footer_block footer_block__3">
							<ul class="footer_links">

								<li><a href="collections" title="">TEA</a></li>

								<li><a href="blogs/blog" title="">Blog</a></li>

								<li><a href="pages/about-us" title="">About</a></li>

								<li><a href="pages/contact-us" title="">Contacts</a></li>

							</ul>

							<ul class="footer_social">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								<li><a href="#"><i class="fa fa-youtube"></i></a></li>
								<li><a href="#"><i class="fa fa-instagram"></i></a></li>
								<li><a href="#"><i class="fa fa-pinterest"></i></a></li>

								<li><a href="#"><i class="fa fa-tumblr"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</footer>

		</div>
		<!-- / #wrapper2 -->
	</div>
	<!-- / #wrapper1 -->



	<!-- JS -->

	<script src="${pageContext.servletContext.contextPath}/resources/user/js/currencies.js"></script>


<!-- 	<script>
		// CURRENCY TOOLS - CAROLINE SCHNAPP (mllegeorgesand@gmail.com)

		if (typeof Currency === "undefined") {
			var Currency = {}
		}
		Currency.cookie = {
			configuration: {
				expires: 365,
				path: "/",
				domain: window.location.hostname
			},
			name: "currency",
			write: function(a) {
				jQuery.cookie(this.name, a, this.configuration)
			},
			read: function() {
				return jQuery.cookie(this.name)
			},
			destroy: function() {
				jQuery.cookie(this.name, null, this.configuration)
			}
		};
		Currency.money_with_currency_format = {
			USD: "${{amount}} USD",
			EUR: "&euro;{{amount}} EUR",
			GBP: "&pound;{{amount}} GBP",
			CAD: "${{amount}} CAD",
			ARS: "${{amount_with_comma_separator}} ARS",
			AUD: "${{amount}} AUD",
			BBD: "${{amount}} Bds",
			BDT: "Tk {{amount}} BDT",
			BSD: "BS${{amount}} BSD",
			BHD: "{{amount}}0 BHD",
			BRL: "R$ {{amount_with_comma_separator}} BRL",
			BOB: "Bs{{amount_with_comma_separator}} BOB",
			BND: "${{amount}} BND",
			BGN: "{{amount}} Ð»Ð² BGN",
			MMK: "K{{amount}} MMK",
			KYD: "${{amount}} KYD",
			CLP: "${{amount_no_decimals}} CLP",
			CNY: "&#165;{{amount}} CNY",
			COP: "${{amount_with_comma_separator}} COP",
			CRC: "&#8353; {{amount_with_comma_separator}} CRC",
			HRK: "{{amount_with_comma_separator}} kn HRK",
			CZK: "{{amount_with_comma_separator}} K&#269;",
			DKK: "kr.{{amount_with_comma_separator}}",
			DOP: "RD$ {{amount_with_comma_separator}}",
			XCD: "EC${{amount}}",
			EGP: "LE {{amount}} EGP",
			XPF: "{{amount_no_decimals_with_space_separator}}} XPF",
			FJD: "FJ${{amount}}",
			GHS: "GH&#8373;{{amount}}",
			GTQ: "{{amount}} GTQ",
			GYD: "${{amount}} GYD",
			GEL: "{{amount}} GEL",
			HKD: "HK${{amount}}",
			HUF: "{{amount_no_decimals_with_comma_separator}} Ft",
			ISK: "{{amount_no_decimals}} kr ISK",
			INR: "Rs.{{amount}}",
			IDR: "Rp {{amount_with_comma_separator}}",
			NIS: "{{amount}} NIS",
			JMD: "${{amount}} JMD",
			JPY: "&#165;{{amount_no_decimals}} JPY",
			JOD: "{{amount}}0 JOD",
			KZT: "{{amount}} KZT",
			KES: "KSh{{amount}}",
			KWD: "{{amount}}0 KWD",
			LVL: "Ls {{amount}} LVL",
			LTL: "{{amount}} Lt",
			MXN: "$ {{amount}} MXN",
			MYR: "RM{{amount}} MYR",
			MUR: "Rs {{amount}} MUR",
			MDL: "{{amount}} MDL",
			MAD: "Dh {{amount}} MAD",
			MNT: "{{amount_no_decimals}} MNT",
			MZN: "Mt {{amount}} MZN",
			ANG: "{{amount}} NA&fnof;",
			NZD: "${{amount}} NZD",
			NGN: "&#8358;{{amount}} NGN",
			NOK: "kr {{amount_with_comma_separator}} NOK",
			OMR: "{{amount_with_comma_separator}} OMR",
			PKR: "Rs.{{amount}} PKR",
			PYG: "Gs. {{amount_no_decimals_with_comma_separator}} PYG",
			PEN: "S/. {{amount}} PEN",
			PHP: "&#8369;{{amount}} PHP",
			PLN: "{{amount_with_comma_separator}} zl PLN",
			QAR: "QAR {{amount_with_comma_separator}}",
			RON: "{{amount_with_comma_separator}} lei RON",
			RUB: "&#1088;&#1091;&#1073;{{amount_with_comma_separator}} RUB",
			SAR: "{{amount}} SAR",
			RSD: "{{amount}} RSD",
			SCR: "Rs {{amount}} SCR",
			SGD: "${{amount}} SGD",
			SYP: "S&pound;{{amount}} SYP",
			ZAR: "R {{amount}} ZAR",
			KRW: "&#8361;{{amount_no_decimals}} KRW",
			LKR: "Rs {{amount}} LKR",
			SEK: "{{amount_no_decimals}} kr SEK",
			CHF: "SFr. {{amount}} CHF",
			TWD: "${{amount}} TWD",
			THB: "{{amount}} &#xe3f; THB",
			TZS: "{{amount}} TZS",
			TTD: "${{amount}} TTD",
			TRY: "{{amount}}TL",
			UAH: "â´{{amount}} UAH",
			AED: "Dhs. {{amount}} AED",
			UYU: "${{amount_with_comma_separator}} UYU",
			VEB: "Bs. {{amount_with_comma_separator}} VEB",
			VND: "{{amount_no_decimals_with_comma_separator}} VND",
			ZMK: "ZMK{{amount_no_decimals_with_comma_separator}}"
		};
		Currency.money_format = {
			USD: "${{amount}}",
			EUR: "&euro;{{amount}}",
			GBP: "&pound;{{amount}}",
			CAD: "${{amount}}",
			ARS: "${{amount_with_comma_separator}}",
			AUD: "${{amount}}",
			BBD: "${{amount}}",
			BDT: "Tk {{amount}}",
			BSD: "BS${{amount}}",
			BHD: "{{amount}}0 BHD",
			BRL: "R$ {{amount_with_comma_separator}}",
			BOB: "Bs{{amount_with_comma_separator}}",
			BND: "${{amount}}",
			BGN: "{{amount}} Ð»Ð²",
			MMK: "K{{amount}}",
			KYD: "${{amount}}",
			CLP: "${{amount_no_decimals}}",
			CNY: "&#165;{{amount}}",
			COP: "${{amount_with_comma_separator}}",
			CRC: "&#8353; {{amount_with_comma_separator}}",
			HRK: "{{amount_with_comma_separator}} kn",
			CZK: "{{amount_with_comma_separator}} K&#269;",
			DKK: "{{amount_with_comma_separator}}",
			DOP: "RD$ {{amount_with_comma_separator}}",
			XCD: "${{amount}}",
			EGP: "LE {{amount}}",
			XPF: "{{amount_no_decimals_with_space_separator}}} XPF",
			FJD: "${{amount}}",
			GHS: "GH&#8373;{{amount}}",
			GTQ: "{{amount}}",
			GYD: "${{amount}}",
			GEL: "{{amount}} GEL",
			HKD: "${{amount}}",
			HUF: "{{amount_no_decimals_with_comma_separator}}",
			ISK: "{{amount_no_decimals}} kr",
			INR: "{{amount}}",
			IDR: "{{amount_with_comma_separator}}",
			NIS: "{{amount}} NIS",
			JMD: "${{amount}}",
			JPY: "&#165;{{amount_no_decimals}}",
			JOD: "{{amount}}0 JD",
			KZT: "{{amount}} KZT",
			KES: "KSh{{amount}}",
			KWD: "{{amount}}0 KD",
			LVL: "Ls {{amount}}",
			LTL: "{{amount}} Lt",
			MXN: "$ {{amount}}",
			MYR: "RM{{amount}} MYR",
			MUR: "Rs {{amount}}",
			MDL: "{{amount}} MDL",
			MAD: "{{amount}} dh",
			MNT: "{{amount_no_decimals}} &#8366",
			MZN: "{{amount}} Mt",
			ANG: "&fnof;{{amount}}",
			NZD: "${{amount}}",
			NGN: "&#8358;{{amount}}",
			NOK: "kr {{amount_with_comma_separator}}",
			OMR: "{{amount_with_comma_separator}} OMR",
			PKR: "Rs.{{amount}}",
			PYG: "Gs. {{amount_no_decimals_with_comma_separator}}",
			PEN: "S/. {{amount}}",
			PHP: "&#8369;{{amount}}",
			PLN: "{{amount_with_comma_separator}} zl",
			QAR: "QAR {{amount_with_comma_separator}}",
			RON: "{{amount_with_comma_separator}} lei",
			RUB: "&#1088;&#1091;&#1073;{{amount_with_comma_separator}}",
			SAR: "{{amount}} SR",
			RSD: "{{amount}} RSD",
			SCR: "Rs {{amount}}",
			SGD: "${{amount}}",
			SYP: "S&pound;{{amount}}",
			ZAR: "R {{amount}}",
			KRW: "&#8361;{{amount_no_decimals}}",
			LKR: "Rs {{amount}}",
			SEK: "{{amount_no_decimals}} kr",
			CHF: "SFr. {{amount}}",
			TWD: "${{amount}}",
			THB: "{{amount}} &#xe3f;",
			TZS: "{{amount}} TZS",
			TTD: "${{amount}}",
			TRY: "{{amount}}TL",
			UAH: "â´{{amount}}",
			AED: "Dhs. {{amount}}",
			UYU: "${{amount_with_comma_separator}}",
			VEB: "Bs. {{amount_with_comma_separator}}",
			VND: "{{amount_no_decimals_with_comma_separator}}â«",
			ZMK: "K{{amount_no_decimals_with_comma_separator}}"
		};
		Currency.formatMoney = function(b, f) {
			if (typeof b == "string") {
				b = b.replace(".", "")
			}
			var e = "";
			var d = /\{\{\s*(\w+)\s*\}\}/;
			var a = (f || this.money_format);

			function c(g) {
				return g.replace(/(\d+)(\d{3}[\.,]?)/, "$1,$2")
			}
			switch (a.match(d)[1]) {
				case "amount":
					e = c(floatToString(b / 100, 2));
					break;
				case "amount_no_decimals":
					e = c(floatToString(b / 100, 0));
					break;
				case "amount_with_comma_separator":
					e = floatToString(b / 100, 2).replace(/\./, ",");
					break;
				case "amount_no_decimals_with_comma_separator":
					e = c(floatToString(b / 100, 0)).replace(/\./, ",");
					break
			}
			return a.replace(d, e)
		};

		function floatToString(c, a) {
			var b = c.toFixed(a).toString();
			if (b.match(/^\.\d+/)) {
				return "0" + b
			} else {
				return b
			}
		}
		Currency.currentCurrency = "";
		Currency.format = "money_with_currency_format";
		Currency.convertAll = function(c, b, a, d) {
			jQuery(a || "span.money").each(function() {
				if (jQuery(this).attr("data-currency") === b) {
					return
				}
				if (jQuery(this).attr("data-currency-" + b)) {
					jQuery(this).html(jQuery(this).attr("data-currency-" + b))
				} else {
					var e = 0;
					var f = Currency[d || Currency.format][c] || "{{amount}}";
					var g = Currency[d || Currency.format][b] || "{{amount}}";
					if (f.indexOf("amount_no_decimals") !== -1) {
						e = Currency.convert(parseInt(jQuery(this).html().replace(/[^0-9]/g, ""), 10) * 100, c, b)
					} else {
						e = Currency.convert(parseInt(jQuery(this).html().replace(/[^0-9]/g, ""), 10), c, b)
					}
					var h = Currency.formatMoney(e, g);
					jQuery(this).html(h);
					jQuery(this).attr("data-currency-" + b, h)
				}
				jQuery(this).attr("data-currency", b)
			});
			this.currentCurrency = b;
			this.cookie.write(b)
		};



		function currencyToggle(target) {


			Currency.format = 'money_format';


			var shopCurrency = "USD";
			Currency.money_with_currency_format[shopCurrency] = "$ {{amount}} USD", Currency.money_format[shopCurrency] = "$ {{amount}}";
			var defaultCurrency = "USD",
				cookieCurrency = Currency.cookie.read();
			jQuery(target).each(function() {
				jQuery(this).attr("data-currency-USD", jQuery(this).html())
			}), null == cookieCurrency ? shopCurrency !== defaultCurrency ? Currency.convertAll(shopCurrency, defaultCurrency) : Currency.currentCurrency = defaultCurrency : jQuery("[name=currencies]").size() && 0 === jQuery("[name=currencies] option[value=" + cookieCurrency + "]").size() ? (Currency.currentCurrency = shopCurrency, Currency.cookie.write(shopCurrency)) : cookieCurrency === shopCurrency ? Currency.currentCurrency = shopCurrency : Currency.convertAll(shopCurrency, cookieCurrency), jQuery("[name=currencies]").val(Currency.currentCurrency).change(function() {
				var r = jQuery(this).val();
				Currency.convertAll(Currency.currentCurrency, r), jQuery(".selected-currency").text(Currency.currentCurrency)
			});
			var original_selectCallback = window.selectCallback,
				selectCallback = function(r, e) {
					original_selectCallback(r, e), Currency.convertAll(shopCurrency, jQuery("[name=currencies]").val()), jQuery(".selected-currency").text(Currency.currentCurrency)
				};
			jQuery(".selected-currency").text(Currency.currentCurrency);

		};

		currencyToggle('span.money');

	</script> -->


	<script src="${pageContext.servletContext.contextPath}/resources/user/js/jquery.swiper.min.js" type="text/javascript"></script>

	<!-- COLLECTION PAGE SCRIPTS -->

	<script>
		// CHOOSE OPTIONS BUTTON
		$(document.body).on('click', '.btn_options', function(e) {
			if ($(window).width() >= 768) {
				$(this).parent().parent().find('.quick_view_btn').trigger('click');
				e.preventDefault();
			};
		});


		// PRODUCT QUICK VIEW MINI
		jQuery(function(e) {
			e(document.body).on("click", ".quick_view_btn", function(i) {
				i.preventDefault(), e(document.body).append('<div id="product_quick_view" style="display: none;"><div class="product_quick_wrapper"><div class="quick_view__left"><div id="img_big"></div><div class="product_images"><div id="img_gallery" class="swiper-container"><div class="swiper-wrapper"></div><div id="img_gallery__prev" class="swiper_btn btn_prev"></div><div id="img_gallery__next" class="swiper_btn btn_next"></div></div></div></div><div class="quick_view__right"><form action="cart/add" method="post" enctype="multipart/form-data" id="product-actions" class="quick_view_form"><p id="quick_view__name" class="product_name"></p><p id="quick_view__type"><label for="">Product type:</label> <span></span></p><p id="quick_view__vendor"><label for="">Vendor:</label> <span></span></p><p id="quick_view__variants"><label for="">Options:</label><select id="product-select" name="id" class="hidden"></select></p><p id="quick_view__price" class="product_price"></p><p id="quick_view__availability"><label for="">Availability:</label> <span></span></p><div id="quick_view__form"><label for="quantity">Choose quantity:</label><div class="quantity_box"><input min="1" type="text" name="quantity" value="1" class="quantity_input" /><span class="quantity_modifier quantity_down"><i class="fa fa-minus"></i></span><span class="quantity_modifier quantity_up"><i class="fa fa-plus"></i></span></div><button class="btn btn-cart" type="submit" id="quick_view__add">Add to cart</button></div></form></div></div></div>'), e.fancybox.showLoading(), e.fancybox.helpers.overlay.open({
					parent: e("body")
				}), console.log(e(this).attr("href") + ".js"),  e.getJSON(e(this).attr("href") + ".json", function(i) {
					if (e(document).on("click", "#img_gallery a", function(i) {
							i.preventDefault();
							var a = e(this).attr("href");
							e("#product_quick_view #img_big img").attr("src", a)
						}), i.title.length < 60) var a = i.title;
					else var a = e.trim(i.title).substring(0, 75) + "...";
					e("#quick_view__name").html('<a href="' + i.url + '">' + a + "</a>"), e("#quick_view__type span").html(i.type), e("#quick_view__vendor span").html(i.vendor), e.each(i.variants, function(i, a) {
						e("#product-select").append('<option value="' + a.id + '">' + a.title + " - " + a.price + "</option>")
					}), e("#quantity").on("focusout", function() {
						var i = e(this).val();
						e(this).val(isNaN(parseFloat(i)) && !isFinite(i) || 0 == parseInt(i) || "" == i ? 1 : parseInt(i) < 0 ? parseInt(i) - 2 * parseInt(i) : parseInt(i))
					}), e("#quantity_up").on("click", function() {
						var i = e("#quantity").val();
						e("#quantity").val(!isNaN(parseFloat(i)) && isFinite(i) ? parseInt(i) + 1 : 1)
					}), e("#quantity_down").on("click", function() {
						var i = e("#quantity").val();
						e("#quantity").val(!isNaN(parseFloat(i)) && isFinite(i) && i > 1 ? parseInt(i) - 1 : 1)
					}), e.getScript("//cdn.shopify.com/s/assets/themes_support/option_selection-ea4f4a242e299f2227b2b8038152223f741e90780c0c766883939e8902542bda.js", function() {
						function a(i, a) {
							var t = i.length;
							0 === t && a();
							var n = 0;
							e(i).each(function() {
								e("<img>").attr("src", this).load(function() {
									n++, n === t && a()
								})
							})
						}
						a(i.images, function() {
							e("#product_quick_view #img_big").append('<img src="' + i.images[0] + '" alt="" />'), e.each(i.images, function(i, a) {
								e("#img_gallery .swiper-wrapper").append('<a class="swiper-slide" href="' + a + '"><img src="' + a + '" alt="" /></a>')
							});
							var a = (new Swiper("#img_gallery", {
								width: 302,
								loop: !0,
								speed: 500,
								slidesPerView: 3,
								spaceBetween: 10,
								prevButton: "#img_gallery__prev",
								nextButton: "#img_gallery__next"
							}), function(i, a) {
								if (i && i.available ? (jQuery("#quick_view__add").removeAttr("disabled").removeClass("disabled"), i.price < i.compare_at_price ? jQuery("#quick_view__price").html('<span class="money">' + Shopify.formatMoney(i.price, "$ {{amount}}") + '</span><span class="money compare-at-price money_sale">' + Shopify.formatMoney(i.compare_at_price, "$ {{amount}}") + '</span><span class="money_sale_percent">â ' + parseInt(100 - 100 * i.price / i.compare_at_price) + "%</span>") : jQuery("#quick_view__price").html('<span class="money">' + Shopify.formatMoney(i.price, "$ {{amount}}") + "</span>"), null != i.inventory_management ? jQuery("#quick_view__availability span").removeClass("notify_danger").addClass("notify_success").html("<b>" + i.inventory_quantity + "</b> item(s)") : jQuery("#quick_view__availability span").removeClass("notify_danger").addClass("notify_success").html("Available")) : (jQuery("#quick_view__add").addClass("disabled").attr("disabled", "disabled"), jQuery("#quick_view__availability span").removeClass("notify_success").addClass("notify_danger").html("Unavailable"), jQuery("#quick_view__price").html('<span class="money">' + Shopify.formatMoney(i.price, "$ {{amount}}") + "</span>")), i && i.featured_image) {
									var t = e("#img_big img"),
										n = i.featured_image,
										s = t[0];
									Shopify.Image.switchImage(n, s, function(i, a, t) {
										e("#img_big img").attr("src", i)
									})
								}
								currencyToggle("#quick_view__price .money")
							});
							new Shopify.OptionSelectors("product-select", {
								product: i,
								onVariantSelected: a,
								enableHistoryState: !1
							}), e.each(e("#quick_view__variants select option"), function() {
								"Default Title" == e(this).val() && e("#quick_view__variants").hide()
							}), e.fancybox(e("#product_quick_view"), {
								openSpeed: 500,
								closeSpeed: 500,
								tpl: {
									wrap: '<div id="quick_view__wrap" class="fancybox-wrap" tabIndex="-1"><div class="fancybox-skin"><div class="fancybox-outer"><div class="fancybox-inner"></div></div></div></div>',
									closeBtn: '<a title="Close" id="quick_view__close" class="fancybox-item fancybox-close" href="javascript:;"></a>'
								},
								afterClose: function() {
									e("#product_quick_view").remove()
								}
							})
						})
					}), e("#quick_view__add").on("click", function() {
						e.fancybox.close()
					})
				})
			})
		});

	</script>





	<!-- PROMOBANNER -->
	<script>
		// jQuery Knob - https://github.com/aterrien/jQuery-Knob
		! function(t) {
			"object" == typeof exports ? module.exports = t(require("jquery")) : "function" == typeof define && define.amd ? define(["jquery"], t) : t(jQuery)
		}(function(t) {
			"use strict";
			var i = {},
				s = Math.max,
				h = Math.min;
			i.c = {}, i.c.d = t(document), i.c.t = function(t) {
				return t.originalEvent.touches.length - 1
			}, i.o = function() {
				var s = this;
				this.o = null, this.$ = null, this.i = null, this.g = null, this.v = null, this.cv = null, this.x = 0, this.y = 0, this.w = 0, this.h = 0, this.$c = null, this.c = null, this.t = 0, this.isInit = !1, this.fgColor = null, this.pColor = null, this.dH = null, this.cH = null, this.eH = null, this.rH = null, this.scale = 1, this.relative = !1, this.relativeWidth = !1, this.relativeHeight = !1, this.$div = null, this.run = function() {
					var i = function(t, i) {
						var h;
						for (h in i) s.o[h] = i[h];
						s._carve().init(), s._configure()._draw()
					};
					if (!this.$.data("kontroled")) {
						if (this.$.data("kontroled", !0), this.extend(), this.o = t.extend({
								min: void 0 !== this.$.data("min") ? this.$.data("min") : 0,
								max: void 0 !== this.$.data("max") ? this.$.data("max") : 100,
								stopper: !0,
								readOnly: this.$.data("readonly") || "readonly" === this.$.attr("readonly"),
								cursor: this.$.data("cursor") === !0 && 30 || this.$.data("cursor") || 0,
								thickness: this.$.data("thickness") && Math.max(Math.min(this.$.data("thickness"), 1), .01) || .35,
								lineCap: this.$.data("linecap") || "butt",
								width: this.$.data("width") || 200,
								height: this.$.data("height") || 200,
								displayInput: null == this.$.data("displayinput") || this.$.data("displayinput"),
								displayPrevious: this.$.data("displayprevious"),
								fgColor: this.$.data("fgcolor") || "#87CEEB",
								inputColor: this.$.data("inputcolor"),
								font: this.$.data("font") || "Arial",
								fontWeight: this.$.data("font-weight") || "bold",
								inline: !1,
								step: this.$.data("step") || 1,
								rotation: this.$.data("rotation"),
								draw: null,
								change: null,
								cancel: null,
								release: null,
								format: function(t) {
									return t
								},
								parse: function(t) {
									return parseFloat(t)
								}
							}, this.o), this.o.flip = "anticlockwise" === this.o.rotation || "acw" === this.o.rotation, this.o.inputColor || (this.o.inputColor = this.o.fgColor), this.$.is("fieldset") ? (this.v = {}, this.i = this.$.find("input"), this.i.each(function(i) {
								var h = t(this);
								s.i[i] = h, s.v[i] = s.o.parse(h.val()), h.bind("change blur", function() {
									var t = {};
									t[i] = h.val(), s.val(s._validate(t))
								})
							}), this.$.find("legend").remove()) : (this.i = this.$, this.v = this.o.parse(this.$.val()), "" === this.v && (this.v = this.o.min), this.$.bind("change blur", function() {
								s.val(s._validate(s.o.parse(s.$.val())))
							})), !this.o.displayInput && this.$.hide(), this.$c = t(document.createElement("canvas")).attr({
								width: this.o.width,
								height: this.o.height
							}), this.$div = t('<div style="' + (this.o.inline ? "display:inline;" : "") + "width:" + this.o.width + "px;height:" + this.o.height + 'px;"></div>'), this.$.wrap(this.$div).before(this.$c), this.$div = this.$.parent(), "undefined" != typeof G_vmlCanvasManager && G_vmlCanvasManager.initElement(this.$c[0]), this.c = this.$c[0].getContext ? this.$c[0].getContext("2d") : null, !this.c) throw {
							name: "CanvasNotSupportedException",
							message: "Canvas not supported. Please use excanvas on IE8.0.",
							toString: function() {
								return this.name + ": " + this.message
							}
						};
						return this.scale = (window.devicePixelRatio || 1) / (this.c.webkitBackingStorePixelRatio || this.c.mozBackingStorePixelRatio || this.c.msBackingStorePixelRatio || this.c.oBackingStorePixelRatio || this.c.backingStorePixelRatio || 1), this.relativeWidth = this.o.width % 1 !== 0 && this.o.width.indexOf("%"), this.relativeHeight = this.o.height % 1 !== 0 && this.o.height.indexOf("%"), this.relative = this.relativeWidth || this.relativeHeight, this._carve(), this.v instanceof Object ? (this.cv = {}, this.copy(this.v, this.cv)) : this.cv = this.v, this.$.bind("configure", i).parent().bind("configure", i), this._listen()._configure()._xy().init(), this.isInit = !0, this.$.val(this.o.format(this.v)), this._draw(), this
					}
				}, this._carve = function() {
					if (this.relative) {
						var t = this.relativeWidth ? this.$div.parent().width() * parseInt(this.o.width) / 100 : this.$div.parent().width(),
							i = this.relativeHeight ? this.$div.parent().height() * parseInt(this.o.height) / 100 : this.$div.parent().height();
						this.w = this.h = Math.min(t, i)
					} else this.w = this.o.width, this.h = this.o.height;
					return this.$div.css({
						width: this.w + "px",
						height: this.h + "px"
					}), this.$c.attr({
						width: this.w,
						height: this.h
					}), 1 !== this.scale && (this.$c[0].width = this.$c[0].width * this.scale, this.$c[0].height = this.$c[0].height * this.scale, this.$c.width(this.w), this.$c.height(this.h)), this
				}, this._draw = function() {
					var t = !0;
					s.g = s.c, s.clear(), s.dH && (t = s.dH()), t !== !1 && s.draw()
				}, this._touch = function(t) {
					var h = function(t) {
						var i = s.xy2val(t.originalEvent.touches[s.t].pageX, t.originalEvent.touches[s.t].pageY);
						i != s.cv && (s.cH && s.cH(i) === !1 || (s.change(s._validate(i)), s._draw()))
					};
					return this.t = i.c.t(t), h(t), i.c.d.bind("touchmove.k", h).bind("touchend.k", function() {
						i.c.d.unbind("touchmove.k touchend.k"), s.val(s.cv)
					}), this
				}, this._mouse = function(t) {
					var h = function(t) {
						var i = s.xy2val(t.pageX, t.pageY);
						i != s.cv && (s.cH && s.cH(i) === !1 || (s.change(s._validate(i)), s._draw()))
					};
					return h(t), i.c.d.bind("mousemove.k", h).bind("keyup.k", function(t) {
						if (27 === t.keyCode) {
							if (i.c.d.unbind("mouseup.k mousemove.k keyup.k"), s.eH && s.eH() === !1) return;
							s.cancel()
						}
					}).bind("mouseup.k", function() {
						i.c.d.unbind("mousemove.k mouseup.k keyup.k"), s.val(s.cv)
					}), this
				}, this._xy = function() {
					var t = this.$c.offset();
					return this.x = t.left, this.y = t.top, this
				}, this._listen = function() {
					return this.o.readOnly ? this.$.attr("readonly", "readonly") : (this.$c.bind("mousedown", function(t) {
						t.preventDefault(), s._xy()._mouse(t)
					}).bind("touchstart", function(t) {
						t.preventDefault(), s._xy()._touch(t)
					}), this.listen()), this.relative && t(window).resize(function() {
						s._carve().init(), s._draw()
					}), this
				}, this._configure = function() {
					return this.o.draw && (this.dH = this.o.draw), this.o.change && (this.cH = this.o.change), this.o.cancel && (this.eH = this.o.cancel), this.o.release && (this.rH = this.o.release), this.o.displayPrevious ? (this.pColor = this.h2rgba(this.o.fgColor, "0.4"), this.fgColor = this.h2rgba(this.o.fgColor, "0.6")) : this.fgColor = this.o.fgColor, this
				}, this._clear = function() {
					this.$c[0].width = this.$c[0].width
				}, this._validate = function(t) {
					var i = ~~((0 > t ? -.5 : .5) + t / this.o.step) * this.o.step;
					return Math.round(100 * i) / 100
				}, this.listen = function() {}, this.extend = function() {}, this.init = function() {}, this.change = function() {}, this.val = function() {}, this.xy2val = function() {}, this.draw = function() {}, this.clear = function() {
					this._clear()
				}, this.h2rgba = function(t, i) {
					var s;
					return t = t.substring(1, 7), s = [parseInt(t.substring(0, 2), 16), parseInt(t.substring(2, 4), 16), parseInt(t.substring(4, 6), 16)], "rgba(" + s[0] + "," + s[1] + "," + s[2] + "," + i + ")"
				}, this.copy = function(t, i) {
					for (var s in t) i[s] = t[s]
				}
			}, i.Dial = function() {
				i.o.call(this), this.startAngle = null, this.xy = null, this.radius = null, this.lineWidth = null, this.cursorExt = null, this.w2 = null, this.PI2 = 2 * Math.PI, this.extend = function() {
					this.o = t.extend({
						bgColor: this.$.data("bgcolor") || "#EEEEEE",
						angleOffset: this.$.data("angleoffset") || 0,
						angleArc: this.$.data("anglearc") || 360,
						inline: !0
					}, this.o)
				}, this.val = function(t, i) {
					return null == t ? this.v : (t = this.o.parse(t), void(i !== !1 && t != this.v && this.rH && this.rH(t) === !1 || (this.cv = this.o.stopper ? s(h(t, this.o.max), this.o.min) : t, this.v = this.cv, this.$.val(this.o.format(this.v)), this._draw())))
				}, this.xy2val = function(t, i) {
					var e, n;
					return e = Math.atan2(t - (this.x + this.w2), -(i - this.y - this.w2)) - this.angleOffset, this.o.flip && (e = this.angleArc - e - this.PI2), this.angleArc != this.PI2 && 0 > e && e > -.5 ? e = 0 : 0 > e && (e += this.PI2), n = e * (this.o.max - this.o.min) / this.angleArc + this.o.min, this.o.stopper && (n = s(h(n, this.o.max), this.o.min)), n
				}, this.listen = function() {
					var i, e, n, a, o = this,
						r = function(t) {
							t.preventDefault();
							var n = t.originalEvent,
								a = n.detail || n.wheelDeltaX,
								r = n.detail || n.wheelDeltaY,
								l = o._validate(o.o.parse(o.$.val())) + (a > 0 || r > 0 ? o.o.step : 0 > a || 0 > r ? -o.o.step : 0);
							l = s(h(l, o.o.max), o.o.min), o.val(l, !1), o.rH && (clearTimeout(i), i = setTimeout(function() {
								o.rH(l), i = null
							}, 100), e || (e = setTimeout(function() {
								i && o.rH(l), e = null
							}, 200)))
						},
						l = 1,
						c = {
							37: -o.o.step,
							38: o.o.step,
							39: o.o.step,
							40: -o.o.step
						};
					this.$.bind("keydown", function(i) {
						var e = i.keyCode;
						if (e >= 96 && 105 >= e && (e = i.keyCode = e - 48), n = parseInt(String.fromCharCode(e)), isNaN(n) && (13 !== e && 8 !== e && 9 !== e && 189 !== e && (190 !== e || o.$.val().match(/\./)) && i.preventDefault(), t.inArray(e, [37, 38, 39, 40]) > -1)) {
							i.preventDefault();
							var r = o.o.parse(o.$.val()) + c[e] * l;
							o.o.stopper && (r = s(h(r, o.o.max), o.o.min)), o.change(o._validate(r)), o._draw(), a = window.setTimeout(function() {
								l *= 2
							}, 30)
						}
					}).bind("keyup", function() {
						isNaN(n) ? a && (window.clearTimeout(a), a = null, l = 1, o.val(o.$.val())) : o.$.val() > o.o.max && o.$.val(o.o.max) || o.$.val() < o.o.min && o.$.val(o.o.min)
					}), this.$c.bind("mousewheel DOMMouseScroll", r), this.$.bind("mousewheel DOMMouseScroll", r)
				}, this.init = function() {
					(this.v < this.o.min || this.v > this.o.max) && (this.v = this.o.min), this.$.val(this.v), this.w2 = this.w / 2, this.cursorExt = this.o.cursor / 100, this.xy = this.w2 * this.scale, this.lineWidth = this.xy * this.o.thickness, this.lineCap = this.o.lineCap, this.radius = this.xy - this.lineWidth / 2, this.o.angleOffset && (this.o.angleOffset = isNaN(this.o.angleOffset) ? 0 : this.o.angleOffset), this.o.angleArc && (this.o.angleArc = isNaN(this.o.angleArc) ? this.PI2 : this.o.angleArc), this.angleOffset = this.o.angleOffset * Math.PI / 180, this.angleArc = this.o.angleArc * Math.PI / 180, this.startAngle = 1.5 * Math.PI + this.angleOffset, this.endAngle = 1.5 * Math.PI + this.angleOffset + this.angleArc;
					var t = s(String(Math.abs(this.o.max)).length, String(Math.abs(this.o.min)).length, 2) + 2;
					this.o.displayInput && this.i.css({
						width: (this.w / 2 + 4 >> 0) + "px",
						height: (this.w / 3 >> 0) + "px",
						position: "absolute",
						"vertical-align": "middle",
						"margin-top": (this.w / 3 >> 0) + "px",
						"margin-left": "-" + (3 * this.w / 4 + 2 >> 0) + "px",
						border: 0,
						background: "none",
						font: this.o.fontWeight + " " + (this.w / t >> 0) + "px " + this.o.font,
						"text-align": "center",
						color: this.o.inputColor || this.o.fgColor,
						padding: "0px",
						"-webkit-appearance": "none"
					}) || this.i.css({
						width: "0px",
						visibility: "hidden"
					})
				}, this.change = function(t) {
					this.cv = t, this.$.val(this.o.format(t))
				}, this.angle = function(t) {
					return (t - this.o.min) * this.angleArc / (this.o.max - this.o.min)
				}, this.arc = function(t) {
					var i, s;
					return t = this.angle(t), this.o.flip ? (i = this.endAngle + 1e-5, s = i - t - 1e-5) : (i = this.startAngle - 1e-5, s = i + t + 1e-5), this.o.cursor && (i = s - this.cursorExt) && (s += this.cursorExt), {
						s: i,
						e: s,
						d: this.o.flip && !this.o.cursor
					}
				}, this.draw = function() {
					var t, i = this.g,
						s = this.arc(this.cv),
						h = 1;
					i.lineWidth = this.lineWidth, i.lineCap = this.lineCap, "none" !== this.o.bgColor && (i.beginPath(), i.strokeStyle = this.o.bgColor, i.arc(this.xy, this.xy, this.radius, this.endAngle - 1e-5, this.startAngle + 1e-5, !0), i.stroke()), this.o.displayPrevious && (t = this.arc(this.v), i.beginPath(), i.strokeStyle = this.pColor, i.arc(this.xy, this.xy, this.radius, t.s, t.e, t.d), i.stroke(), h = this.cv == this.v), i.beginPath(), i.strokeStyle = h ? this.o.fgColor : this.fgColor, i.arc(this.xy, this.xy, this.radius, s.s, s.e, s.d), i.stroke()
				}, this.cancel = function() {
					this.val(this.v)
				}
			}, t.fn.dial = t.fn.knob = function(s) {
				return this.each(function() {
					var h = new i.Dial;
					h.o = s, h.$ = t(this), h.run()
				}).parent()
			}
		});

		// jQuery Circular CountDown - https://github.com/nikhiln/Circular-Countdown
		! function(e) {
			e.fn.ccountdown = function(a, t, n, r, d) {
				var o, g = this,
					i = new Array("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"),
					c = (new Date, function() {
						var c = new Date,
							u = c.getYear();
						1e3 > u && (u += 1900);
						var h = c.getMonth(),
							l = c.getDate(),
							f = c.getHours(),
							s = c.getMinutes(),
							_ = c.getSeconds();
						_ = "0" + _, _ = _.substr(_.length - 2);
						var v = i[h] + " " + l + ", " + u + " " + f + ":" + s + ":" + _,
							M = i[t - 1] + " " + n + ", " + a + " " + r;
						_dd = Date.parse(M) - Date.parse(v), _dday = Math.floor(_dd / 864e5 * 1), _dhour = Math.floor(_dd % 864e5 / 36e5 * 1), _dmin = Math.floor(_dd % 864e5 % 36e5 / 6e4 * 1), _dsec = Math.floor(_dd % 5184e6 % 36e5 % 6e4 / 1e3 * 1);
						var y = e(g),
							w = y.find(".second"),
							D = y.find(".minute"),
							p = y.find(".hour"),
							m = y.find(".days");
						w.val(_dsec).trigger("change"), D.val(_dmin).trigger("change"), p.val(_dhour).trigger("change"), m.val(_dday).trigger("change"), 0 == _dd && (window.clearInterval(o), "function" == typeof d && d.call(this))
					});
				c(), o = setInterval(c, 1e3)
			}
		}(jQuery);

		// COUNTER INIT
		$(function() {
			$(".knob").knob({
				draw: function() {
					if ("tron" == this.$.data("skin")) {
						var t, i = this.angle(this.cv),
							s = this.startAngle,
							h = this.startAngle,
							n = h + i,
							o = !0;
						return this.g.lineWidth = this.lineWidth, this.o.cursor && (h = n - .3) && (n += .3), this.o.displayPrevious && (t = this.startAngle + this.angle(this.value), this.o.cursor && (s = t + .3) && (t -= .3), this.g.beginPath(), this.g.strokeStyle = this.previousColor, this.g.arc(this.xy, this.xy, this.radius - this.lineWidth, s, t, !1), this.g.stroke()), this.g.beginPath(), this.g.strokeStyle = o ? this.o.fgColor : this.fgColor, this.g.arc(this.xy, this.xy, this.radius - this.lineWidth, h, n, !1), this.g.stroke(), this.g.lineWidth = 2, this.g.beginPath(), this.g.strokeStyle = this.o.fgColor, this.g.arc(this.xy, this.xy, this.radius - this.lineWidth + 1 + 2 * this.lineWidth / 3, 0, 2 * Math.PI, !1), this.g.stroke(), !1
					}
				}
			});
			var t, i = 0,
				s = 0,
				h = 0,
				n = $("div.idir"),
				o = $("div.ival"),
				e = function() {
					h++, n.show().html("+").fadeOut(), o.html(h)
				},
				r = function() {
					h--, n.show().html("-").fadeOut(), o.html(h)
				};
			$("input.infinite").knob({
				min: 0,
				max: 20,
				stopper: !1,
				change: function() {
					t > this.cv ? i ? (r(), i = 0) : (i = 1, s = 0) : t < this.cv && (s ? (e(), s = 0) : (s = 1, i = 0)), t = this.cv
				}
			})
		});


		jQuery(function($) {
			if ($.cookie('promobanner_toggle') && $.cookie('promobanner_toggle') == 'disabled') {
				$('#promobanner').hide();
			} else {
				$('#promobanner_close').on('click', function(e) {
					e.preventDefault();
					$.cookie('promobanner_toggle', 'disabled', {
						path: 'default.htm'
					});
					$('#promobanner').slideUp();
				});
			};
		});

	</script>



	<!-- COLOR SCHEMES SWITCH -->
	<script>
		jQuery(function(e) {
			var s = e("#color_settings"),
				c = e("#color_settings__btn");
			e(document).on("click", "#color_settings__btn", function(e) {
				e.preventDefault(), s.hasClass("on") ? (s.removeClass("on"), c.find("i").removeClass("fa-close").addClass("fa-pencil")) : (s.addClass("on"), c.find("i").addClass("fa-close").removeClass("fa-pencil"))
			}), e(document).on("click", ".color_palette", function() {
				e.cookie("color_scheme", e(this).attr("id"), {
					path: "default.htm"
				}), e(".color_palette").each(function() {
					e(this).removeClass("active")
				}), e(this).addClass("active"), e("html").removeClass("scheme_1 scheme_2 scheme_3 scheme_4").addClass(e(this).attr("id"))
			}), e(window).load(function() {
				e(".color_palette").each(function() {
					e(this).removeClass("active"), e.cookie("color_scheme") ? e(this).attr("id") == e.cookie("color_scheme") && (e.cookie("color_scheme", e(this).attr("id"), {
						path: "default.htm"
					}), e(this).addClass("active"), e("html").removeClass("scheme_1 scheme_2 scheme_3 scheme_4").addClass(e(this).attr("id"))) : (e(".color_palette:eq(0)").addClass("active"), e("html").removeClass("scheme_1 scheme_2 scheme_3 scheme_4").addClass("scheme_1"))
				})
			})
		});

	</script>


	<!-- COMMON SCRIPTS -->


	<script src="${pageContext.servletContext.contextPath}/resources/user/js/jquery.fancybox.min.js" type="text/javascript"></script>

	<script>
		// JQUERY.API.JS FULL
		function floatToString(t, o) {
			var r = t.toFixed(o).toString();
			return r.match(/^\.\d+/) ? "0" + r : r
		}

		function attributeToString(t) {
			return "string" != typeof t && (t += "", "undefined" === t && (t = "")), jQuery.trim(t)
		}
		"undefined" == typeof Shopify && (Shopify = {}), Shopify.money_format = "$ {{amount}}", Shopify.onError = function(XMLHttpRequest, textStatus) {
			var data = eval("(" + XMLHttpRequest.responseText + ")");
			alert(data.message + "(" + data.status + "): " + data.description)
		}, Shopify.onCartUpdate = function(t) {
			alert("There are now " + t.item_count + " items in the cart.")
		}, Shopify.onItemAdded = function(t) {
			alert(t.title + " was added to your shopping cart.")
		}, Shopify.onProduct = function(t) {
			alert("Received everything we ever wanted to know about " + t.title)
		}, Shopify.formatMoney = function(t, o) {
			var r = "",
				e = /\{\{\s*(\w+)\s*\}\}/,
				a = o || this.money_format;
			switch (a.match(e)[1]) {
				case "amount":
					r = floatToString(t / 100, 2).replace(/(\d+)(\d{3}[\.,]?)/, "$1 $2");
					break;
				case "amount_no_decimals":
					r = floatToString(t / 100, 0).replace(/(\d+)(\d{3}[\.,]?)/, "$1 $2");
					break;
				case "amount_with_comma_separator":
					r = floatToString(t / 100, 2).replace(/\./, ",").replace(/(\d+)(\d{3}[\.,]?)/, "$1.$2")
			}
			return a.replace(e, r)
		}, Shopify.resizeImage = function(t, o) {
			try {
				if ("original" == o) return t;
				var r = t.match(/(.*\/[\w\-\_\.]+)\.(\w{2,4})/);
				return r[1] + "_" + o + "." + r[2]
			} catch (e) {
				return t
			}
		}, Shopify.addItem = function(t, o, r) {
			o = o || 1;
			var e = {
				type: "POST",
				url: "cart/add.json",
				data: "quantity=" + o + "&id=" + t,
				dataType: "json",
				success: function(t) {
					"function" == typeof r ? r(t) : Shopify.onItemAdded(t)
				},
				error: function(t, o) {
					Shopify.onError(t, o)
				}
			};
			jQuery.ajax(e)
		}, Shopify.addItemFromForm = function(t, o) {
			var r = {
				type: "POST",
				url: "cart/add.json",
				data: jQuery(t).serialize(),
				dataType: "json",
				success: function(r) {
					"function" == typeof o ? o(r, t) : Shopify.onItemAdded(r, t);

					$('body').append('<div id="cart_added"><h4>Product added to cart</h4><div class="cart_added__row"><div class="cart_added__1" id="cart_added__img"><img src="" alt="" /></div><div class="cart_added__2"><span id="cart_added__name" class="product_name"></span><p id="cart_added__quantity">Quantity: <span></span></p><a class="btn" href="cart">Go to cart</a><a class="btn btn-alt" id="cart_added__close" href="#">Continue shopping</a></div></div></div>');

					if (r.title.length < 60) {
						var productTitle = r.title;
					} else {
						var productTitle = $.trim(r.title).substring(0, 60) + '...';
					};

					$('#cart_added__name').html(productTitle);
					$('#cart_added__quantity span').html(r.quantity);
					$('#cart_added__close').on('click', function(e) {
						e.preventDefault();

						$('.fancybox-close').trigger('click');
					});

					if (r.image) {
						$('#cart_added__img img').attr('src', r.image).load(function() {
							$.fancybox.open($('#cart_added'), {
								'openSpeed': 500,
								'closeSpeed': 300,
								'afterClose': function() {
									$('#cart_added').remove();
								}
							});
						});
					} else {
						$('#cart_added__img').hide();
						$.fancybox.open($('#cart_added'), {
							'openSpeed': 500,
							'closeSpeed': 300,
							'afterClose': function() {
								$('#cart_added').remove();
							}
						});
					};

				},
				error: function(t, o) {
					Shopify.onError(t, o);

					var errorData = eval('(' + t.responseText + ')');

					$('body').append('<div id="cart_added" class="cart_error"><h4></h4><p class="alert alert-error"></p></div>');
					$('#cart_added h4').html(errorData.message);
					$('#cart_added p').html(errorData.description);

					$.fancybox.open($('#cart_added'), {
						'openSpeed': 500,
						'closeSpeed': 300,
						'afterClose': function() {
							$('#cart_added').remove();
						}
					});

				}
			};
			jQuery.ajax(r)
		}, Shopify.getCart = function(t) {
			jQuery.getJSON("cart.js", function(o) {
				"function" == typeof t ? t(o) : Shopify.onCartUpdate(o)
			})
		}, Shopify.getProduct = function(t, o) {
			jQuery.getJSON("products/" + t + ".js", function(t) {
				"function" == typeof o ? o(t) : Shopify.onProduct(t)
			})
		}, Shopify.changeItem = function(t, o, r) {
			var e = {
				type: "POST",
				url: "cart/change.js",
				data: "quantity=" + o + "&id=" + t,
				dataType: "json",
				success: function(t) {
					"function" == typeof r ? r(t) : Shopify.onCartUpdate(t)
				},
				error: function(t, o) {
					Shopify.onError(t, o)
				}
			};
			jQuery.ajax(e)
		}, Shopify.removeItem = function(t, o) {
			var r = {
				type: "POST",
				url: "cart/change.js",
				data: "quantity=0&id=" + t,
				dataType: "json",
				success: function(t) {
					"function" == typeof o ? o(t) : Shopify.onCartUpdate(t)
				},
				error: function(t, o) {
					Shopify.onError(t, o)
				}
			};
			jQuery.ajax(r)
		}, Shopify.clear = function(t) {
			var o = {
				type: "POST",
				url: "cart/clear.js",
				data: "",
				dataType: "json",
				success: function(o) {
					"function" == typeof t ? t(o) : Shopify.onCartUpdate(o)
				},
				error: function(t, o) {
					Shopify.onError(t, o)
				}
			};
			jQuery.ajax(o)
		}, Shopify.updateCartFromForm = function(t, o) {
			var r = {
				type: "POST",
				url: "cart/update.js",
				data: jQuery(t).serialize(),
				dataType: "json",
				success: function(r) {
					"function" == typeof o ? o(r, t) : Shopify.onCartUpdate(r, t)
				},
				error: function(t, o) {
					Shopify.onError(t, o)
				}
			};
			jQuery.ajax(r)
		}, Shopify.updateCartAttributes = function(t, o) {
			var r = "";
			jQuery.isArray(t) ? jQuery.each(t, function(t, o) {
				var e = attributeToString(o.key);
				"" !== e && (r += "attributes[" + e + "]=" + attributeToString(o.value) + "&")
			}) : "object" == typeof t && null !== t && jQuery.each(t, function(t, o) {
				r += "attributes[" + attributeToString(t) + "]=" + attributeToString(o) + "&"
			});
			var e = {
				type: "POST",
				url: "cart/update.js",
				data: r,
				dataType: "json",
				success: function(t) {
					"function" == typeof o ? o(t) : Shopify.onCartUpdate(t)
				},
				error: function(t, o) {
					Shopify.onError(t, o)
				}
			};
			jQuery.ajax(e)
		}, Shopify.updateCartNote = function(t, o) {
			var r = {
				type: "POST",
				url: "cart/update.js",
				data: "note=" + attributeToString(t),
				dataType: "json",
				success: function(t) {
					"function" == typeof o ? o(t) : Shopify.onCartUpdate(t)
				},
				error: function(t, o) {
					Shopify.onError(t, o)
				}
			};
			jQuery.ajax(r)
		};


		// JQUERY.AJAX-CART.JS MINI
		jQuery(document).ready(function(t) {
			var e = {
					TOTAL_ITEMS: ".cart-total-items",
					TOTAL_PRICE: ".cart-total-price",
					SUBMIT_ADD_TO_CART: "input[type=image], input.submit-add-to-cart",
					FORM_UPDATE_CART: "form[name=cartform]",
					FORM_UPDATE_CART_BUTTON: "form[name=cartform] input[name=update]",
					FORM_UPDATE_CART_BUTTONS: "input[type=image], input.button-update-cart",
					LINE_ITEM_ROW: ".cart-line-item",
					LINE_ITEM_QUANTITY_PREFIX: "input#updates_",
					LINE_ITEM_PRICE_PREFIX: ".cart-line-item-price-",
					LINE_ITEM_REMOVE: ".remove a",
					EMPTY_CART_MESSAGE: "#empty"
				},
				a = function(t) {
					return Shopify.formatMoney(t, "${{ amount }}")
				};
			t(document).on("submit", 'form[action*="cart/add"]', function(e) {
				e.preventDefault(), t(e.target).find(".btn-cart").attr("disabled", !0).addClass("disabled"), Shopify.addItemFromForm(e.target)
			}), t(document).on("click", ".btn-cart", function() {
				t.fancybox.showLoading(), t.fancybox.helpers.overlay.open({
					parent: t("body")
				})
			}), t(e.FORM_UPDATE_CART_BUTTON).click(function(a) {
				a.preventDefault(), t(a.target.form).find(e.FORM_UPDATE_CART_BUTTONS).attr("disabled", !0).addClass("disabled"), Shopify.updateCartFromForm(a.target.form)
			}), t(e.FORM_UPDATE_CART).delegate(e.LINE_ITEM_REMOVE, "click", function(a) {
				a.preventDefault();
				var i = this.href.split("/").pop().split("?").shift();
				Shopify.removeItem(i), t(this).parents(e.LINE_ITEM_ROW).remove()
			}), Shopify.onItemAdded = function(e, a) {
				t(a).find(".btn-cart").attr("disabled", !1).removeClass("disabled"), Shopify.getCart()
			}, Shopify.onCartUpdate = function(i, n) {
				t("#cart_items").html(i.item_count);
				var r = a(i.total_price);
				t(e.TOTAL_PRICE).html(r), t(e.EMPTY_CART_MESSAGE).length > 0 && 0 == i.item_count && (t(e.FORM_UPDATE_CART).hide(), t(e.EMPTY_CART_MESSAGE).show()), n = n || !1, n && i.item_count > 0 && (t.each(i.items, function(i, n) {
					t(e.LINE_ITEM_PRICE_PREFIX + n.id).html(a(n.line_price)), t(e.LINE_ITEM_QUANTITY_PREFIX + n.id).val(n.quantity)
				}), t(n).find("input[value=0]").parents(e.LINE_ITEM_ROW).remove(), t(n).find(e.FORM_UPDATE_CART_BUTTONS).attr("disabled", !1).removeClass("disabled"))
			}, Shopify.onError = function() {
				t("form").find(".btn-cart").attr("disabled", !1).removeClass("disabled")
			}
		});

	</script>




	<script>
		// HOMEPAGE BACKGROUND PARALLAX EFFECT

		(function() {
			(function(e, r, p) {
				var n, q, k, l;
				l = /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent);
				q = (k = -1 !== navigator.appVersion.indexOf("MSIE")) ? parseInt(navigator.appVersion.split("MSIE")[1]) : null;
				n = function() {
					function b(a, d) {
						this.options = e.extend(!0, {}, this.Defaults, d);
						this.$element = e(a);
						this.$win = e(p);
						this.$doc = e(r);
						this.initialize()
					}
					b.prototype.Defaults = {
						blur: !0,
						direction: "inverse",
						speed: 1,
						duration: 200,
						easing: "linear",
						screenAliases: {
							0: "",
							480: "xs",
							768: "sm",
							992: "md",
							1200: "lg"
						}
					};
					b.prototype.initialize = function() {
						var a;
						a = this;
						a.$element.wrapInner(e("<div/>", {
							"class": "rd-parallax-inner"
						})).find(".rd-parallax-layer[data-type]").each(function() {
							var d, c;
							d = e(this);
							switch (d.attr("data-type").toLowerCase()) {
								case "media":
									if (c = this.getAttribute("data-url")) d.css({
										"background-image": a.url(c)
									}), ("true" === this.getAttribute("data-blur") || a.options.blur) && e("<img/>", {
										src: c
									}).load(function() {
										d.attr("data-media-width", this.width);
										d.attr("data-media-height", this.height);
										a.$win.on("resize", e.proxy(a.blurMedia, d[0], a));
										return e.proxy(a.blurMedia, d[0], a)()
									});
									l || (a.$element.on("resize", e.proxy(a.resizeMedia, this, a)), a.$element.on("resize", e.proxy(a.moveLayer, this, a)), a.$win.on("resize", e.proxy(a.resizeMedia, this, a)))
							}
							if (!l) {
								a.$doc.on("scroll", e.proxy(a.moveLayer, this, a));
								a.$doc.on("resize", e.proxy(a.moveLayer, this, a));
								if ("true" === this.getAttribute("data-fade") && !k) a.$doc.on("scroll", e.proxy(a.fadeLayer, this, a));
								if ("true" === this.getAttribute("data-fade") && !k) a.$doc.on("resize",
									e.proxy(a.fadeLayer, this, a))
							}
						});
						a.$win.trigger("resize");
						a.$doc.trigger("scroll")
					};
					b.prototype.moveLayer = function(a) {
						var d, c, h, f, m, b;
						f = a.$win.scrollTop();
						h = a.$element.offset().top;
						b = a.$win.height();
						d = a.$element.height();
						c = this.offsetHeight;
						parseFloat(m);
						m = ("inverse" === a.getAttribute(this, "direction") ? -1 : 1) * Math.min(parseFloat(a.getAttribute(this, "speed")), 2);
						d = -(h - f) * m + (d - c) / 2 + (b - d) / 2 * m;
						return e(this).css(a.transform(d, a))
					};
					b.prototype.fadeLayer = function(a, d) {
						var c, h, f, b, g;
						f = e(this);
						c = a.$element.height();
						h = a.$element.offset().top + c / 2;
						b = f.offset().top + f.height() / 2;
						g = c / 6;
						if (h + g > b && h - g < b) return f.css({
							opacity: 1
						});
						c = h - g < b ? 1 + (h + g - b) / c / 3 * 10 : 1 - (h - g - b) / c / 3 * 10;
						return f.css({
							opacity: 0 > c ? 0 : 1 < c ? 1 : c.toFixed(2)
						})
					};
					b.prototype.blurMedia = function(a) {
						var d, c, b, f;
						d = this.offsetHeight;
						f = this.offsetWidth;
						c = parseFloat(this.getAttribute("data-media-height"));
						b = parseFloat(this.getAttribute("data-media-width"));
						d = Math.ceil(Math.max(d / c, f / b));
						return e(this).css(a.blur(d))
					};
					b.prototype.resizeMedia = function(a) {
						return this.style.height =
							a.px(a.getMediaHeight(a.$win.height(), a.$element.height(), a.getAttribute(this, "speed"), "inverse" === a.getAttribute(this, "direction") ? -1 : 1))
					};
					b.prototype.getMediaHeight = function(a, d, c, b) {
						var f;
						c = Math.max(parseFloat(c), 0);
						c = Math.min(parseFloat(c), 2);
						f = 0; - 1 === b && (f = (d + a) * c);
						return d + f + (1 >= c ? (a - d) * c : a * c)
					};
					b.prototype.url = function(a) {
						return "url(" + a + ")"
					};
					b.prototype.px = function(a) {
						return a + "px"
					};
					b.prototype.transform = function(a, d) {
						return k && 10 > q ? {
							transform: "translate(0," + a + "px)"
						} : {
							"-webkit-transform": "translate3d(0," +
								a + "px, 0)",
							transform: "translate3d(0," + a + "px, 0)",
							transition: l ? "" + d.options.duration + "ms transform " + d.options.easing : "none"
						}
					};
					b.prototype.blur = function(a) {
						return 3 < a ? {
							"-webkit-filter": "blur(" + a + "px)",
							filter: "blur(" + a + "px)"
						} : {
							filter: "none",
							"-webkit-filter": "none"
						}
					};
					b.prototype.getAttribute = function(a, d) {
						var c, b, f, e, g;
						if (null != this.options.screenAliases)
							for (b = Object.keys(this.options.screenAliases).reverse(), f = e = 0, g = b.length - 1;
								(0 <= g ? e <= g : e >= g) && !(c = "" !== this.options.screenAliases[b[f]] ? "-" + this.options.screenAliases[b[f]] :
									this.options.screenAliases[b[f]], c = a.getAttribute("data" + c + "-" + d), b[f] <= this.$win.width() && null != c); f = 0 <= g ? ++e : --e);
						return null != c ? c : this.options[d]
					};
					return b
				}();
				e.fn.extend({
					RDParallax: function(b) {
						return this.each(function() {
							var a;
							a = e(this);
							if (!a.data("RDParallax")) return a.data("RDParallax", new n(this, b))
						})
					}
				});
				return p.RDParallax = n
			})(window.jQuery, document, window);
			"undefined" !== typeof module && null !== module ? module.exports = window.RDParallax : "function" === typeof define && define.amd && define(["jquery"],
				function() {
					return window.RDParallax
				})
		}).call(this);


		parallaxBG = function() {

			if ($(".rd-parallax").length) {
				// PARALLAX BLOCK #1
				$(".rd-parallax").RDParallax();
			};
			if ($(".rd-parallax_2").length) {
				// PARALLAX BLOCK #1
				$(".rd-parallax_2").RDParallax();
			};
			if ($(".rd-parallax_3").length) {
				// PARALLAX BLOCK #1
				$(".rd-parallax_3").RDParallax();
			};
		};

		$(window).load(function() {
			parallaxBG();
		});

	</script>


	<script>
		//Header menu
		$("#header_toggle").click(function() {
			$(this).toggleClass("on");
			$("#header_menu").slideToggle("fast").toggleClass('open');
		});

		$(document).mouseup(function(e) {
			var div = $(".header_toggle_wrapp");
			if (!div.is(e.target) &&
				div.has(e.target).length === 0) {
				if ($('#header_toggle').hasClass("on")) {
					$("#header_menu").slideToggle().toggleClass('open');
				}
				$('#header_toggle').removeClass("on");
			}
		});

	</script>


	<script src="${pageContext.servletContext.contextPath}/resources/user/js/assets.js" type="text/javascript"></script>
	<script src="${pageContext.servletContext.contextPath}/resources/user/js/shop.js" type="text/javascript"></script>