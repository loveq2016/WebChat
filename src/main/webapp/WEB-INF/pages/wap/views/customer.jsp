<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/pages/common/imports.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <title>顾客</title>

    <link rel="stylesheet" href="${_cssPath}/jquery.mobile.theme-1.3.2.min.css"/>
    <link rel="stylesheet" href="${_cssPath}/jquery.mobile-1.4.0.css"/>
    <link rel="stylesheet" href="${_cssPath}/jqm-demos.css"/>
    <link rel="stylesheet" href="${_cssPath}/idangerous.swiper.css"/>
    <link rel="stylesheet" href="${_cssPath}/common.css" />
    <%--<link rel="stylesheet" href="${_cssPath}/customer.css" />--%>

    <script language="javascript" src="${_jsPath}/jquery.js"></script>
    <script language="javascript" src="${_jsPath}/jquery.mobile-1.4.0.js"></script>

    <script type="text/javascript">
        $(function () {

            $("#orderDishes").click(function () {
                location.href = "orderDishes.html";
            });

            $("#takeaway").click(function () {
                location.href = "orderDishes.html";
            });

            $("#customer").click(function () {
                location.href = "customer.html";
            });


            $("#myMenu").click(function () {



                //                $.post("validateHasLogin", { name: "John", time: "2pm" }, function(data){ process(data); }, "xml");

            });

        });
    </script>

</head>

<body>
<div data-role="page">

    <div data-role="header">
        <a href="#" data-icon="delete">Cancel</a>

        <h2>My App</h2>
        <a href="#" data-icon="check">Save</a>
    </div>

    <!-- /content -->
    <div data-role="content" class="content">
        <ul data-role="listview" data-inset="true">
            <li><a id="myMenu" href="" data-ajax="false">我的菜单</a></li>
            <li><a id="myTakeOut" href="" data-ajax="false">我的外卖</a></li>
            <li><a id="myBook" href="" data-ajax="false">我的预定</a></li>
            <li><a id="myAddress" href="" data-ajax="false">外卖地址管理</a></li>
        </ul>

    </div>

    <!-- /footer -->
    <div data-role="footer" class="footer">
    <div id="orderDishes" class="footer-menu">点菜</div>
    <div id="takeaway" class="footer-menu">外卖</div>
    <div id="customer" class="footer-menu">我的</div>
    </div>

    <div data-role="footer" class="footer">
        <a href="#" class="footer-menu" data-icon="home">首页</a>
        <a href="#" class="footer-menu" data-icon="arrow-u">Up</a>
        <a href="#" class="footer-menu" data-icon="star">订单</a>
    </div>
</div>
</body>
</html>
