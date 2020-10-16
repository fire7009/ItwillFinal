<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>NeuBoard</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <!-- Favicon -->
    <link rel="shortcut icon" href="assets/img/favicon.ico" type="image/x-icon">
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
    <!-- Fonts  -->
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/simple-line-icons.css">
    <!-- Switchery -->
    <link rel="stylesheet" href="assets/plugins/switchery/switchery.min.css">
    <!-- CSS Animate -->
    <link rel="stylesheet" href="assets/css/animate.css">
    <!-- Custom styles for this theme -->
    <link rel="stylesheet" href="assets/css/main.css">
    <!-- Feature detection -->
    <script src="assets/js/vendor/modernizr-2.6.2.min.js"></script>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="assets/js/vendor/html5shiv.js"></script>
    <script src="assets/js/vendor/respond.min.js"></script>
    <![endif]-->
    
    <style type="text/css">
    	.error {
			color: red;
			position: relative;
			display: none;
		}
    </style>
</head>

<body>
    <section id="main-wrapper" class="theme-default">
        <header id="header">
            <!--logo start-->
            <div class="brand">
                <a href="index.html" class="logo">
                    <i class="icon-layers"></i>
                    <span>NEU</span>BOARD</a>
            </div>
            <!--logo end-->
            <ul class="nav navbar-nav navbar-left">
                <li class="toggle-navigation toggle-left">
                    <button class="sidebar-toggle" id="toggle-left">
                        <i class="fa fa-bars"></i>
                    </button>
                </li>
                <li class="toggle-profile hidden-xs">
                    <button type="button" class="btn btn-default" id="toggle-profile">
                        <i class="icon-user"></i>
                    </button>
                </li>
               <li class="hidden-xs hidden-sm">
                    <input type="text" class="search" placeholder="Search project...">
                    <button type="submit" class="btn btn-sm btn-search"><i class="fa fa-search"></i>
                    </button>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown profile hidden-xs">
                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                        <span class="meta">
                            <span class="avatar">
                                <img src="assets/img/profile.jpg" class="img-circle" alt="">
                            </span>
                        <span class="text">Mike Adams</span>
                        <span class="caret"></span>
                        </span>
                    </a>
                    <ul class="dropdown-menu animated fadeInRight" role="menu">
                        <li>
                            <span class="arrow top"></span>
                            <h5>
                                <span>80%</span>
                                <small class="text-muted">Profile complete</small>
                            </h5>
                            <div class="progress progress-xs">
                                <div class="progress-bar progress-bar" style="width: 80%">
                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="javascript:void(0);">
                                <span class="icon"><i class="fa fa-user"></i>
                                </span>My Account</a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">
                                <span class="icon"><i class="fa fa-envelope"></i>
                                </span>Messages</a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">
                                <span class="icon"><i class="fa fa-cog"></i>
                                </span>Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="javascript:void(0);">
                                <span class="icon"><i class="fa fa-sign-out"></i>
                                </span>Logout</a>
                        </li>
                    </ul>
                </li>
                <li class="toggle-fullscreen hidden-xs">
                    <button type="button" class="btn btn-default expand" id="toggle-fullscreen">
                        <i class="fa fa-expand"></i>
                    </button>
                </li>
                <li class="toggle-navigation toggle-right">
                    <button class="sidebar-toggle" id="toggle-right">
                        <i class="fa fa-indent"></i>
                    </button>
                </li>
            </ul>
        </header>
        <!--sidebar left start-->
        <aside class="sidebar sidebar-left">
            <div class="sidebar-profile">
                <div class="avatar">
                    <img class="img-circle profile-image" src="assets/img/profile.jpg" alt="profile">
                    <i class="on border-dark animated bounceIn"></i>
                </div>
                <div class="profile-body dropdown">
                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><h4>Mike Adams <span class="caret"></span></h4></a>
                    <small class="title">Front-end Developer</small>
                    <ul class="dropdown-menu animated fadeInRight" role="menu">
                        <li class="profile-progress">
                            <h5>
                                <span>80%</span>
                                <small>Profile complete</small>
                            </h5>
                            <div class="progress progress-xs">
                                <div class="progress-bar progress-bar-primary" style="width: 80%">
                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="javascript:void(0);">
                                <span class="icon"><i class="fa fa-user"></i>
                                </span>My Account</a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">
                                <span class="icon"><i class="fa fa-envelope"></i>
                                </span>Messages</a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">
                                <span class="icon"><i class="fa fa-cog"></i>
                                </span>Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="javascript:void(0);">
                                <span class="icon"><i class="fa fa-sign-out"></i>
                                </span>Logout</a>
                        </li>
                    </ul>
                </div>
            </div>
            <nav>
                <h5 class="sidebar-header">Navigation</h5>
                <ul class="nav nav-pills nav-stacked">
                    <li>
                        <a href="index.html" title="Dashboard">
                            <i class="fa  fa-fw fa-tachometer"></i> Dashboard
                        </a>
                    </li>
                    <li class="nav-dropdown">
                        <a href="#" title="UI Elements">
                            <i class="fa  fa-fw fa-cogs"></i> UI Elements
                        </a>
                        <ul class="nav-sub">
                            <li>
                                <a href="ui-buttons.html" title="Buttons">
                                     Buttons
                                </a>
                            </li>
                            <li>
                                <a href="ui-sliders-progress.html" title="Sliders &amp; Progress">
                                     Sliders &amp; Progress
                                </a>
                            </li>
                            <li>
                                <a href="ui-modals-popus.html" title="Modals &amp; Popups">
                                     Modals &amp; Popups
                                </a>
                            </li>
                            <li>
                                <a href="ui-tabs-accordions.html" title="Tabs &amp; Accordions">
                                     Tabs &amp; Accordions
                                </a>
                            </li>

                            <li>
                                <a href="ui-alerts-notifications.html" title="Alerts &amp; Notifications">
                                     Alerts &amp; Notifications
                                </a>
                            </li>
                            <li>
                                <a href="ui-nestable-lists.html" title=" Nestable Lists">
                                     Nestable Lists
                                </a>
                            </li>
                            <li>
                                <a href="ui-panels.html" title="Panels">
                                     Panels
                                </a>
                            </li>
                            <li>
                                <a href="ui-icons.html" title="Icons">
                                     Icons
                                </a>
                            </li>
                            <li>
                                <a href="ui-typography.html" title="Typography">
                                     Typography
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-dropdown">
                        <a href="#" title="Forms">
                            <i class="fa  fa-fw fa-edit"></i> Forms
                        </a>
                        <ul class="nav-sub">
                            <li><a href="forms-components.html" title="Components">Components</a>
                            </li>
                            <li><a href="forms-validation.html" title="Validation">Validation</a>
                            </li>
                            <li><a href="forms-mask.html" title="Mask">Mask</a>
                            </li>
                            <li><a href="forms-wizard.html" title="Wizard">Wizard</a>
                            </li>
                            <li><a href="forms-multiple-file.html" title="Multiple File Upload">Multiple File Upload</a>
                            </li>
                            <li><a href="forms-wysiwyg.html" title="WYSIWYG Editor">WYSIWYG Editor</a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-dropdown">
                        <a href="#" title="Tables">
                            <i class="fa  fa-fw fa-th-list"></i> Tables
                        </a>
                        <ul class="nav-sub">
                            <li>
                                <a href="tables-basic-tables.html" title="Basic Tables">
                                     Basic Tables
                                </a>
                            </li>
                            <li>
                                <a href="tables-data-tables.html" title="Data Tables">
                                     Data Tables
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-dropdown">
                        <a href="#" title="Charts">
                            <i class="fa  fa-fw fa-bar-chart-o"></i> Charts
                        </a>
                        <ul class="nav-sub">
                            <li>
                                <a href="charts-chartjs.html" title="Chartjs">
                                    Chartjs
                                </a>
                            </li>
                            <li>
                                <a href="charts-c3.html" title="C3 Charts">
                                     C3 Charts
                                </a>
                            </li>
                            <li>
                                <a href="charts-morris.html" title="Morris.js Charts">
                                     Morris.js Charts
                                </a>
                            </li>
                            <li>
                                <a href="charts-sparkline.html" title="Sparkline Charts">
                                     Sparkline Charts
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-dropdown">
                        <a href="#" title="Mail">
                            <i class="fa fa-fw fa-envelope-o"></i> Mail
                            <span class="label label-primary label-circle pull-right">8</span>
                        </a>
                        <ul class="nav-sub">
                            <li>
                                <a href="mail-inbox.html" title="Mail Inbox">
                                    Inbox
                                </a>
                            </li>
                            <li>
                                <a href="mail-compose.html" title="Mail Compose">
                                     Compose Mail
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-dropdown">
                        <a href="#" title="Maps">
                            <i class="fa  fa-fw fa-map-marker"></i> Maps
                        </a>
                        <ul class="nav-sub">
                            <li>
                                <a href="maps-google.html" title="Google Maps">
                                     Google Maps
                                </a>
                            </li>
                            <li>
                                <a href="maps-vector.html" title="Vector Maps">
                                     Vector Maps
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="../Frontend/" title="Frontend">
                            <i class="fa  fa-fw fa-desktop"></i> Front-end Theme
                            <span class="pull-right badge badge-danger">new</span>
                        </a>
                    </li>
                    <li class="nav-dropdown  open active">
                        <a href="#" title="Pages">
                            <i class="fa  fa-fw fa-file-text"></i> Pages
                        </a>
                        <ul class="nav-sub">
                            <li class="active">
                                <a href="pages-blank-page.html" title="Blank Page">
                                     Blank Page
                                </a>
                            </li>

                            <li>
                                <a href="pages-profile.html" title="Profile">
                                     Profile
                                </a>
                            </li>
                            <li>
                                <a href="pages-sign-in.html" title="Sign In">
                                     Sign In
                                </a>
                            </li>
                            <li>
                                <a href="pages-sign-up.html" title="Sign Up">
                                     Sign Up
                                </a>
                            </li>
                            <li>
                                <a href="pages-locked-screen.html" title="Locked Screen">
                                     Locked Screen
                                </a>
                            </li>
                            <li>
                                <a href="pages-404.html" title="404 Page">
                                     404 Page
                                </a>
                            </li>
                            <li>
                                <a href="pages-500.html" title="500 Page">
                                     500 Page
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-dropdown">
                        <a href="#" title="Menu Levels">
                            <i class="fa  fa-fw fa-folder-open"></i> Menu Levels
                        </a>
                        <ul class="nav-sub">
                            <li>
                                <a href="javascript:;" title="Level 2.1">
                                    <i class="fa fa-fw fa-file"></i> Level 1.1
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;" title="Level 2.2">
                                    <i class="fa fa-fw fa-file"></i> Level 1.2
                                </a>
                            </li>
                            <li class="nav-dropdown">
                                <a href="#" title="Level 2.3">
                                    <i class="fa fa-fw fa-folder-open"></i> Level 1.3
                                </a>
                                <ul class="nav-sub">
                                    <li>
                                        <a href="javascript:;" title="Level 3.1">
                                            <i class="fa fa-fw fa-file"></i> Level 2.1
                                        </a>
                                    </li>
                                    <li class="nav-dropdown">
                                        <a href="#" title="Level 3.2">
                                            <i class="fa fa-fw fa-folder-open"></i> Level 2.2
                                        </a>
                                        <ul class="nav-sub">
                                            <li>
                                                <a href="javascript:;" title="Level 4.1">
                                                    <i class="fa fa-fw fa-file"></i> Level 3.1
                                                </a>
                                            </li>
                                            <li class="nav-dropdown">
                                                <a href="#" title="Level 4.2">
                                                    <i class="fa fa-fw fa-folder-open"></i> Level 3.2
                                                </a>
                                                <ul class="nav-sub">
                                                    <li class="nav-dropdown">
                                                        <a href="#" title="Level 5.1">
                                                            <i class="fa fa-fw fa-folder-open"></i> Level 4.1
                                                        </a>
                                                        <ul class="nav-sub">
                                                            <li>
                                                                <a href="javascript:;" title="Level 6.1">
                                                                    <i class="fa fa-fw fa-file"></i> Level 5.1
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="javascript:;" title="Level 6.2">
                                                                    <i class="fa fa-fw fa-file"></i> Level 5.2
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;" title="Level 5.2">
                                                            <i class="fa fa-fw fa-file"></i> Level 4.2
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;" title="Level 5.3">
                                                            <i class="fa fa-fw fa-file"></i> Level 4.3
                                                        </a>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>

                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="animations.html" title="CSS Animations">
                            <i class="fa  fa-fw fa-magic"></i> CSS Animations
                        </a>
                    </li>
                </ul>
            </nav>
            <h5 class="sidebar-header">Account Settings</h5>
            <div class="setting-list">
                <div class="row">
                    <div class="col-xs-8">
                        <label for="check1" class="control-label">Share your status</label>
                    </div>
                    <div class="col-xs-4">
                        <input type="checkbox" class="js-switch" checked id="check1" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-8">
                        <label for="check2" class="control-label">Push Notifications</label>
                    </div>
                    <div class="col-xs-4">
                        <input type="checkbox" class="js-switch" id="check2" />
                    </div>
                </div>
            </div>
        </aside>
        <!--sidebar left end-->
        <!--main content start-->
         <section class="main-content-wrapper">
            <div class="pageheader">
                <h1>ê³µì§ì¬í­ </h1>
                <div class="breadcrumb-wrapper hidden-xs">
                    <span class="label">You are here:</span>
                    <ol class="breadcrumb">
                        <li><a href="index.html">Dashboard</a>
                        </li>
                        <li>Forms</li>
                        <li class="active">Form Mask</li>
                    </ol>
                </div>
            </div>
            <section id="main-content" class="animated fadeInUp">
                <div class="container">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">ê³µì§ì¬í­ ë±ë¡</h3>
                              
                            </div>
                            <div class="panel-body">
                                <form class="form-horizontal form-border" id="form">
                                    <div class="container">
        <div class="row">
         
          
          <div class="col-md-6 offset-md-3">                       
           <div class="form-group row">
             <div class="col-md-12">
               <label for="ntitle" class="text-black" style="font-weight: bold">ì ëª©<span style="color: red;">*</span></label>
                <input type="text" class="form-control" id="ntitle" name="ntitle">
                <div id="ntitleMsg" class="error" style="margin-top: 10px;">ì ëª©ì ìë ¥í´ì£¼ì¸ì.</div>
              </div>
            </div><br>
            
           <div class="form-group row">
             <div class="col-md-12">
               <label for="nwriter" class="text-black" style="font-weight: bold">ìì±ì<span style="color: red;">*</span></label>
              <input type="text" class="form-control" id="nwriter" name="nwriter" >
              <div id="nwriterMsg" class="error" style="margin-top: 10px;">ìì±ìë¥¼ ìë ¥í´ì£¼ì¸ì.</div>
             </div>
           </div><br>
           
         <div class="form-group row">
              <div class="col-md-12">
                <label for="ncontent" class="text-black" style="font-weight: bold">ë´ì©</label>                
                	<textarea name="ncontent" id="ncontent" cols="30" rows="7" class="form-control" ></textarea>                       
             </div>
           </div><br>
           
           <div class="form-group row">
             <div class="col-md-12">
             	<label for="nimg" class="text-black" style="font-weight: bold">íì¼ì²¨ë¶</label><br>
             </div>                    	
             <div class="col-md-12">
               <input type="file" name="nimg" value="ë¶ë¬ì¤ê¸°">
             </div>                  
           </div><br>
           
           <div class="form-group row">
             <div class="col-lg-12">
               <input type="submit" class="btn btn-primary btn-block" value="ìì± ìë£">
             </div>
           </div>                
              </div>
          </div>         
        </div>

                                </form>


                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </section>
        <!--main content end-->
    </section>
    <!--sidebar right start-->
    <aside id="sidebar-right">
        <h4 class="sidebar-title">contact List</h4>
        <div id="contact-list-wrapper">
            <div class="heading">
                <ul>
                    <li class="new-contact"><a href="javascript:void(0)"><i class="fa fa-plus"></i></a>
                    </li>
                    <li>
                        <input type="text" class="search" placeholder="Search">
                        <button type="submit" class="btn btn-sm btn-search"><i class="fa fa-search"></i>
                        </button>
                    </li>
                </ul>
            </div>
            <div id="contact-list">
                <ul>
                    <li>
                        <div class="row">
                            <div class="col-md-3">
                                <span class="avatar">
                        <img src="assets/img/avatar3.png" class="img-circle" alt="">
                          <i class="on animated bounceIn"></i>
                        </span>
                            </div>
                            <div class="col-md-9">
                                <div class="name">Ashley Bell </div>
                                <small class="location text-muted"><i class="icon-pointer"></i> Sarasota, FL</small>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="row">
                            <div class="col-md-3">
                                <span class="avatar">
                        <img src="assets/img/avatar1.png" class="img-circle" alt="">
                          <i class="on animated bounceIn"></i>
                        </span>
                            </div>
                            <div class="col-md-9">
                                <div class="name">Brian Johnson </div>
                                <small class="location text-muted"><i class="icon-pointer"></i> San Francisco, CA</small>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="row">
                            <div class="col-md-3">
                                <span class="avatar">
                        <img src="assets/img/avatar2.png" class="img-circle" alt="">
                          <i class="on animated bounceIn"></i>
                        </span>
                            </div>
                            <div class="col-md-9">
                                <div class="name">Chris Jones </div>
                                <small class="location text-muted"><i class="icon-pointer"></i> Brooklyn, NY</small>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="row">
                            <div class="col-md-3">
                                <span class="avatar">
                        <img src="assets/img/avatar4.jpg" class="img-circle" alt="">
                          <i class="on animated bounceIn"></i>
                        </span>
                            </div>
                            <div class="col-md-9">
                                <div class="name">Erica Hill </div>
                                <small class="location text-muted"><i class="icon-pointer"></i> Palo Alto, Ca</small>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="row">
                            <div class="col-md-3">
                                <span class="avatar">
                        <img src="assets/img/avatar5.png" class="img-circle" alt="">
                          <i class="away animated bounceIn"></i>
                        </span>
                            </div>
                            <div class="col-md-9">
                                <div class="name">Greg Smith </div>
                                <small class="location text-muted"><i class="icon-pointer"></i> London, UK</small>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="row">
                            <div class="col-md-3">
                                <span class="avatar">
                        <img src="assets/img/avatar6.png" class="img-circle" alt="">
                          <i class="on animated bounceIn"></i>
                        </span>
                            </div>
                            <div class="col-md-9">
                                <div class="name">Jason Kendall</div>
                                <small class="location text-muted"><i class="icon-pointer"></i> New York, NY </small>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="row">
                            <div class="col-md-3">
                                <span class="avatar">
                        <img src="assets/img/avatar7.png" class="img-circle" alt="">
                          <i class="on animated bounceIn"></i>
                        </span>
                            </div>
                            <div class="col-md-9">
                                <div class="name">Kristen Davis </div>
                                <small class="location text-muted"><i class="icon-pointer"></i> Greenville, SC</small>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="row">
                            <div class="col-md-3">
                                <span class="avatar">
                        <img src="assets/img/avatar8.png" class="img-circle off" alt="">
                          <i class="off animated bounceIn"></i>
                        </span>
                            </div>
                            <div class="col-md-9">
                                <div class="name">Michael Shepard </div>
                                <small class="location text-muted"><i class="icon-pointer"></i> Vancouver, BC</small>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="row">
                            <div class="col-md-3">
                                <span class="avatar">
                        <img src="assets/img/avatar9.png" class="img-circle off" alt="">
                          <i class="off animated bounceIn"></i>
                        </span>
                            </div>
                            <div class="col-md-9">
                                <div class="name">Paul Allen</div>
                                <small class="location text-muted"><i class="icon-pointer"></i> Savannah, GA</small>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <div id="contact-user">
                <div class="chat-user active"><span><i class="icon-bubble"></i></span>
                </div>
                <div class="email-user"><span><i class="icon-envelope-open"></i></span>
                </div>
                <div class="call-user"><span><i class="icon-call-out"></i></span>
                </div>
            </div>
        </div>
    </aside>
    <!--sidebar right end-->
    <!--Config demo-->
    <div id="config" class="config hidden-xs">
        <h4>Settings<a href="javascript:void(0)" class="config-link closed"><i class="icon-settings"></i></a></h4>
        <div class="config-swatch-wrap">
            <div class="row">
                <div class="col-xs-6">
                    <ul class="options">
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-default">
                                <span class="header bg-white"></span>
                                <span class="header bg-white"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-dark">
                                <span class="header bg-dark"></span>
                                <span class="header bg-white"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-blue">
                                <span class="header bg-info"></span>
                                <span class="header bg-white"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-blue-full">
                                <span class="header bg-info"></span>
                                <span class="header bg-info"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-grey">
                                <span class="header bg-grey"></span>
                                <span class="header bg-white"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-grey-full">
                                <span class="header bg-grey"></span>
                                <span class="header bg-grey"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>

                    </ul>
                </div>
                <div class="col-xs-6">
                    <ul class="options">
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-dark-full">
                                <span class="header bg-dark"></span>
                                <span class="header bg-dark"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-green">
                                <span class="header bg-green"></span>
                                <span class="header bg-white"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-green-full">
                                <span class="header bg-green"></span>
                                <span class="header bg-green"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-red">
                                <span class="header bg-red"></span>
                                <span class="header bg-white"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-red-full">
                                <span class="header bg-red"></span>
                                <span class="header bg-red"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-dark-blue-full">
                                <span class="header bg-dark-blue"></span>
                                <span class="header bg-dark-blue"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!--/Config demo-->
    <!--Global JS-->
    <script src="assets/js/vendor/jquery-1.11.1.min.js"></script>
    <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/plugins/navgoco/jquery.navgoco.min.js"></script>
    <script src="assets/plugins/switchery/switchery.min.js"></script>
    <script src="assets/plugins/pace/pace.min.js"></script>
      <script src="assets/plugins/fullscreen/jquery.fullscreen-min.js"></script>
    <script src="assets/js/src/app.js"></script>
</body>

</html>
