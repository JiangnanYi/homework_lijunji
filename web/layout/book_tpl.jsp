        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                <%--
                  Created by IntelliJ IDEA.
                  User: Mr.黎
                  Date: 2018/8/26
                  Time: 13:52
                  To change this template use File | Settings | File Templates.
                --%>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
        <html>
        <head>
        <title>Title</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Novus Admin Panel Responsive web template, Bootstrap Web Templates, Flat Web
        Templates, Android Compatible web template,
        SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"
        />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); },
        false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- Bootstrap Core CSS -->
        <link href="<c:url value="/assets/css/bootstrap.css"/>" rel="stylesheet">
        <link href="<c:url value="/css/bootstrap.css"/>" rel='stylesheet' type='text/css' />
        <!-- Custom CSS -->
        <link href="<c:url value="/css/style.css"/>" rel='stylesheet' type='text/css' />
        <!-- font CSS -->
        <!-- font-awesome icons -->
        <link href="<c:url value="/css/clndr.css"/>" rel="stylesheet">
        <link href="<c:url value="/css/custom.css"/>" rel="stylesheet">
        <link href="<c:url value="/css/jqvmap.css"/>" rel="stylesheet">
        <link href="<c:url value="/css/font-awesome.css"/>" rel="stylesheet">
        <!-- //font-awesome icons -->
        <!-- js-->
        <script src="<c:url value="/js/jquery-1.11.1.min.js"/>"></script>
        <script src="<c:url value="/js/modernizr.custom.js"/>"></script>
        <!--webfonts-->
        <link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic'
        rel='stylesheet' type='text/css'>
        <!--//webfonts-->
        <!--animate-->
        <link href="<c:url value="/css/animate.css"/>" rel="stylesheet" type="text/css" media="all">
        <script src="<c:url value="/js/wow.min.js"/>"></script>
        <script>
        new WOW().init();
        </script>
        <!--//end-animate-->
        <!-- chart -->
        <script src="<c:url value="/js/Chart.js"/>"></script>
        <!-- //chart -->
        <!--Calender-->
        <link rel="stylesheet" href="<c:url value="/css/clndr.css"/>" type="text/css" />
        <script src="<c:url value="/js/underscore-min.js"/>" type="text/javascript"></script>
        <script src= "<c:url value="/js/moment-2.2.1.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/js/clndr.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/js/site.js"/>" type="text/javascript"></script>
        <!--End Calender-->
        <!-- Metis Menu -->
        <script src="<c:url value="/js/metisMenu.min.js"/>"></script>
        <script src="<c:url value="/js/custom.js"/>"></script>
        <link href="<c:url value="/css/custom.css"/>" rel="stylesheet">
        <!--//Metis Menu -->
        </head>
        <body class="cbp-spmenu-push">
        <div class="main-content">
        <!--left-fixed -navigation-->
        <div class=" sidebar" role="navigation">
        <div class="navbar-collapse">
        <%@include file="book_menu.jsp" %>
        </div>
        </div>
        <!--left-fixed -navigation-->
        <!-- header-starts -->
        <div class="sticky-header header-section ">
        <%@include file="book_nav.jsp" %>
        </div>
        <div id="page-wrapper">
        <%@include file="book_body.jsp" %>
        </div>
        </div>
        <!-- Classie -->
        <script src="<c:url value="/js/classie.js"/>"></script>
        <script>
        var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
        showLeftPush = document.getElementById( 'showLeftPush' ),
        body = document.body;

        showLeftPush.onclick = function() {
        classie.toggle( this, 'active' );
        classie.toggle( body, 'cbp-spmenu-push-toright' );
        classie.toggle( menuLeft, 'cbp-spmenu-open' );
        disableOther( 'showLeftPush' );
        };


        function disableOther( button ) {
        if( button !== 'showLeftPush' ) {
        classie.toggle( showLeftPush, 'disabled' );
        }
        }
        </script>
        <!--scrolling js-->
        <script src="<c:url value="/js/jquery.nicescroll.js"/>"></script>
        <script src="<c:url value="/js/scripts.js"/>"></script>
        <!--//scrolling js-->
        <!-- Bootstrap Core JavaScript -->
        <script src="<c:url value="/js/bootstrap.js"/>"> </script>
        </body>
        </html>
