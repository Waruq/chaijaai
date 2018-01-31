<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html class="color_scheme">

<meta charset="utf-8">
<tiles:insertAttribute name="header" />




<body id="tea-club" class="template-index scheme_1">

    <div id="page_preloader">
        <div class="global_loader"></div>
    </div>


	<!-- <div id="color_settings">
		<h4>Choose colors</h4>
		<a id="color_settings__btn" href="#"><i class="fa fa-pencil"></i></a>

		<div id="scheme_1" class="color_palette active">
			<div class="color_1 color_item"></div>
			<div class="color_2 color_item"></div>
		</div>

		<div id="scheme_2" class="color_palette">
			<div class="color_1 color_item"></div>
			<div class="color_2 color_item"></div>
		</div>

		<div id="scheme_3" class="color_palette">
			<div class="color_1 color_item"></div>
			<div class="color_2 color_item"></div>
		</div>

		<div id="scheme_4" class="color_palette">
			<div class="color_1 color_item"></div>
			<div class="color_2 color_item"></div>
		</div>
	</div> -->




    <div id="wrapper1">
        <div id="wrapper2">
		<tiles:insertAttribute name="menu" />
		<tiles:insertAttribute name="body" />
		<tiles:insertAttribute name="footer" />
	</div>
	</div>	
</body>



</html>