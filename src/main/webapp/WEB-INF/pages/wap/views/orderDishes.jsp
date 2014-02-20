<%@ page contentType="text/html;charset=UTF-8"
         language="java" %>
<%@ include file="/WEB-INF/pages/common/imports.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Content-Type"
          content="text/html; charset=utf-8" />
    <meta name="viewport"
          content="width=device-width, initial-scale=1" />

    <title>点餐</title>

    <link rel="stylesheet" href="${_cssPath}/jquery.mobile-1.4.0.css" />
    <link rel="stylesheet" href="${_cssPath}/jqm-demos.css" />
    <link rel="stylesheet" href="${_cssPath}/idangerous.swiper.css" />
    <link rel="stylesheet" href="${_cssPath}/common.css" />
    <link rel="stylesheet" href="${_cssPath}/orderDishes.css" />

    <script language="javascript" src="${_jsPath}/jquery.js"></script>
    <script language="javascript" src="${_jsPath}/jquery.mobile-1.4.0.js"></script>

    <script type="text/javascript"><!--
    $(function () {
        // 增加
        /*$(".count-add").click(function{
         var count = parseInt($(this).parent().find("input").val());
         if (count >= 0) {
         $(this).find(".count-cut").removeClass("dn");
         $(this).find("input").removeClass("dn");
         }
         $(this).parent().find("input").val(count + 1);
         });

         // 减少
         $(".count-cut").click(function(){
         var count = parseInt($(this).parent().find("input").val());
         $(this).parent().find("input").val(count - 1);
         if (count <= 1) {
         $(this).find(".count-cut").addClass("dn");
         $(this).find("input").addClass("dn");
         }
         });*/
    });

    function addCount(obj) {
        var count = parseInt($(obj).parent().find("input").val());
        if (count >= 0) {
            $(obj).parent().find(".count-cut").removeClass("dn");
            $(obj).parent().find("input").removeClass("dn");
        }
        $(obj).parent().find("input").val(count + 1);
    }

    function cutCount(obj) {
        var count = parseInt($(obj).parent().find("input").val());
        if (count <= 1) {
            $(obj).parent().find(".count-cut").addClass("dn");
            $(obj).parent().find("input").addClass("dn");
        }
        $(obj).parent().find("input").val(count - 1);
    }
    --></script>

  </head>

  <body>

		<div data-role="page">
            <div data-role="header" >
                <h1>点餐菜单</h1>
            </div>
			<div role="main"
                 class="ui-content order-ui-content">
				<div class="order-header">
					<span>老乡村农家庄</span>
				</div>

				<div data-demo-html="true"
                     data-demo-css="#inset-tablist">
					<div data-role="tabs">
						<ul data-role="listview"
                            data-inset="true"
                            class="tablist-left order-listview">
							<li data-icon="false">
								<a href="#one"
                                   data-ajax="false">冷菜系列</a>
							</li>
							<li data-icon="false">
								<a href="#two"
                                   data-ajax="false">特色菜</a>
							</li>
							<li data-icon="false">
								<a href="#three"
                                   data-ajax="false">厨师推荐</a>
							</li>
							<li data-icon="false">
								<a href="#three"
                                   data-ajax="false">家常菜</a>
							</li>
							<li data-icon="false">
								<a href="#three"
                                   data-ajax="false">川菜系列</a>
							</li>
							<li data-icon="false">
								<a href="#three"
                                   data-ajax="false">煲仔系列</a>
							</li>
						</ul>
						<ul id="one"
                            class="tablist-content order-list-listview"
                            data-role="listview"
                            data-inset="true">
							<li data-icon="false">
								<span>单点仙草1</span>
								<br />
								<span class="orange font-b">￥5</span>

								<span class="btn-span">
									<button data-role="none"
                                            class="order-add-btn count-add"
                                            onclick="addCount(this);">+</button>
									<input data-role="none"
                                           class="order-input dn"
                                           readonly="readonly"
                                           value="0" />
									<button data-role="none"
                                            class="order-add-btn count-cut dn"
                                            onclick="cutCount(this);">-</button>
								</span>
							</li>
							<li data-icon="false">
								<span>单点仙草2</span>
								<br />
								<span class="orange font-b">￥10</span>

								<span class="btn-span">
									<button data-role="none"
                                            class="order-add-btn count-add"
                                            onclick="addCount(this);">+</button>
									<input data-role="none"
                                           class="order-input dn"
                                           readonly="readonly"
                                           value="0" />
									<button data-role="none"
                                            class="order-add-btn count-cut dn"
                                            onclick="cutCount(this);">-</button>
								</span>
							</li>
						</ul>

						<ul id="two"
                            class="tablist-content order-list-listview"
                            data-role="listview"
                            data-inset="true">
							<li data-icon="false">
								<span>水煮鱼1</span>
								<br />
								<span class="orange font-b">￥20</span>

								<span class="btn-span">
									<button data-role="none"
                                            class="order-add-btn count-add"
                                            onclick="addCount(this);">+</button>
									<input data-role="none"
                                           class="order-input dn"
                                           readonly="readonly"
                                           value="0" />
									<button data-role="none"
                                            class="order-add-btn count-cut dn"
                                            onclick="cutCount(this);">-</button>
								</span>
							</li>
							<li data-icon="false">
								<span>水煮鱼2</span>
								<br />
								<span class="orange font-b">￥40</span>

								<span class="btn-span">
									<button data-role="none"
                                            class="order-add-btn count-add"
                                            onclick="addCount(this);">+</button>
									<input data-role="none"
                                           class="order-input dn"
                                           readonly="readonly"
                                           value="0" />
									<button data-role="none"
                                            class="order-add-btn count-cut dn"
                                            onclick="cutCount(this);">-</button>
								</span>
							</li>
						</ul>

						<ul id="three"
                            class="tablist-content order-list-listview"
                            data-role="listview"
                            data-inset="true">
							<li data-icon="false">
								<span>鱼香肉丝1</span>
								<br />
								<span class="orange font-b">￥20</span>

								<span class="btn-span">
									<button data-role="none"
                                            class="order-add-btn count-add"
                                            onclick="addCount(this);">+</button>
									<input data-role="none"
                                           class="order-input dn"
                                           readonly="readonly"
                                           value="0" />
									<button data-role="none"
                                            class="order-add-btn count-cut dn"
                                            onclick="cutCount(this);">-</button>
								</span>
							</li>
							<li data-icon="false">
								<span>鱼香肉丝1</span>
								<br />
								<span class="orange font-b">￥40</span>

								<span class="btn-span">
									<button data-role="none"
                                            class="order-add-btn count-add"
                                            onclick="addCount(this);">+</button>
									<input data-role="none"
                                           class="order-input dn"
                                           readonly="readonly"
                                           value="0" />
									<button data-role="none"
                                            class="order-add-btn count-cut dn"
                                            onclick="cutCount(this);">-</button>
								</span>
							</li>
						</ul>

					</div>
				</div>
			</div>
			<!-- /content -->

			<div data-role="footer"
                 class="text-center">
				<button data-role="none"
                        class="order-footer-btn orange">选好了</button>
			</div><!-- /footer -->

		</div>
		<!-- /page -->

	</body>
</html>

