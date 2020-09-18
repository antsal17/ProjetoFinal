<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="backEndAdminHome.aspx.cs" Inherits="ProjetoFinal.BackEnd.Admin.backEndAdminHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>Dashboard</title>
    <!-- Iconic Fonts -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link href="vendors/iconic-fonts/font-awesome/css/all.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="vendors/iconic-fonts/flat-icons/flaticon.css" />
    <link rel="stylesheet" href="vendors/iconic-fonts/cryptocoins/cryptocoins.css" />
    <link rel="stylesheet" href="vendors/iconic-fonts/cryptocoins/cryptocoins-colors.css" />
    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <!-- jQuery UI -->
    <link href="assets/css/jquery-ui.min.css" rel="stylesheet" />
    <!-- Page Specific CSS (Slick Slider.css) -->
    <link href="assets/css/slick.css" rel="stylesheet" />
    <link href="assets/css/datatables.min.css" rel="stylesheet" />
    <!-- Costic styles -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- Favicon -->
    <link rel="icon" type="image/png" sizes="32x32" href="favicon.ico" />

</head>
<body>
    <form id="form1" runat="server">
        <div class="ms-body ms-aside-left-open ms-primary-theme ms-has-quickbar">
            <!-- Preloader -->
            <div id="preloader-wrap">
                <div class="spinner spinner-8">
                    <div class="ms-circle1 ms-child"></div>
                    <div class="ms-circle2 ms-child"></div>
                    <div class="ms-circle3 ms-child"></div>
                    <div class="ms-circle4 ms-child"></div>
                    <div class="ms-circle5 ms-child"></div>
                    <div class="ms-circle6 ms-child"></div>
                    <div class="ms-circle7 ms-child"></div>
                    <div class="ms-circle8 ms-child"></div>
                    <div class="ms-circle9 ms-child"></div>
                    <div class="ms-circle10 ms-child"></div>
                    <div class="ms-circle11 ms-child"></div>
                    <div class="ms-circle12 ms-child"></div>
                </div>
            </div>
            <!-- Overlays -->
            <div class="ms-aside-overlay ms-overlay-left ms-toggler" data-target="#ms-side-nav" data-toggle="slideLeft"></div>
            <div class="ms-aside-overlay ms-overlay-right ms-toggler" data-target="#ms-recent-activity" data-toggle="slideRight"></div>
            <!-- Sidebar Navigation Left -->
            <aside id="ms-side-nav" class="side-nav fixed ms-aside-scrollable ms-aside-left">
                <!-- Logo -->
                <div class="logo-sn ms-d-block-lg">
                    <a class="pl-0 ml-0 text-center" href="index.html">
                        <img src="assets/img/costic/costic-logo-216x62.png" alt="logo" />
                    </a>
                </div>
                <!-- Navigation -->
                <ul class="accordion ms-main-aside fs-14" id="side-nav-accordion">
                    <!-- Dashboard -->
                    <li class="menu-item">
                        <a href="#" data-target="#dashboard" aria-expanded="false" aria-controls="dashboard"><span style="color: #73253c !important;"><i class="material-icons fs-16" style="color: #73253c !important;">dashboard</i>Dashboard </span>
                        </a>
                    </li>
                    <!-- /Dashboard -->
                    <!-- product -->
                    <li class="menu-item">
                        <a href="#" class="has-chevron" data-toggle="collapse" data-target="#product" aria-expanded="false" aria-controls="product"><span><i class="fa fa-archive fs-16"></i>Products </span>
                        </a>
                        <ul id="product" class="collapse" aria-labelledby="product" data-parent="#side-nav-accordion">
                            <li><a href="pages/product/productlist.html">Product List</a>
                            </li>
                            <li><a href="pages/product/addproduct.html">Add Product</a>
                            </li>
                            <li><a href="pages/product/productdetail.html">Product Detail</a>
                            </li>
                        </ul>
                    </li>
                    <!-- product end -->
                    <!-- orders -->
                    <li class="menu-item">
                        <a href="pages/orders.html"><span><i class="fas fa-clipboard-list fs-16"></i>Orders</span>
                        </a>
                    </li>
                    <!-- orders end -->
                    <!-- restaurants -->
                    <!-- restaurants end -->
                    <!-- Invoice -->
                    <li class="menu-item">
                        <a href="#" class="has-chevron" data-toggle="collapse" data-target="#invoice" aria-expanded="false" aria-controls="invoice"><span><i class="fas fa-file-invoice fs-16"></i>Invoice </span>
                        </a>
                        <ul id="invoice" class="collapse" aria-labelledby="invoice" data-parent="#side-nav-accordion">
                            <li><a href="pages/invoice/invoicedetail.html">Invoice Detail</a>
                            </li>
                            <li><a href="pages/invoice/invoicelist.html">Invoice List</a>
                            </li>
                        </ul>
                    </li>
                    <!-- Invoice end -->
                    <!-- customers-->
                    <li class="menu-item">
                        <a href="#" class="has-chevron" data-toggle="collapse" data-target="#customer" aria-expanded="false" aria-controls="customer"><span><i class="fas fa-user-friends fs-16"></i>Customers </span>
                        </a>
                        <ul id="customer" class="collapse" aria-labelledby="customer" data-parent="#side-nav-accordion">
                            <li><a href="pages/customer/customersreview.html">Customers Review</a>
                            </li>
                            <li><a href="pages/customer/customerlist.html">Customers List</a>
                            </li>
                            <li><a href="pages/customer/addcustomer.html">Add Customer</a>
                            </li>
                        </ul>
                    </li>
                    <!-- Customers  end -->
                    <!-- Form Elements -->
                    <!-- /Charts -->
                    <!-- Apps -->
                    <li class="menu-item">
                        <a href="#" class="has-chevron" data-toggle="collapse" data-target="#apps" aria-expanded="false" aria-controls="apps"><span><i class="material-icons fs-16">mode_comment</i>Chat</span>
                        </a>
                        <ul id="apps" class="collapse" aria-labelledby="apps" data-parent="#side-nav-accordion">
                            <li><a href="pages/apps/chat.html">Chat</a>
                            </li>
                            <li><a href="pages/apps/email.html">Email</a>
                            </li>
                        </ul>
                    </li>
                    <!-- /Apps -->
                </ul>
            </aside>
            <!-- Sidebar Right -->
            <aside id="ms-recent-activity" class="side-nav fixed ms-aside-right ms-scrollable">
                <div class="ms-aside-header">
                    <ul class="nav nav-tabs tabs-bordered d-flex nav-justified mb-3" role="tablist">
                        <li role="presentation" class="fs-12"><a href="#activityLog" aria-controls="activityLog" class="active" role="tab" data-toggle="tab">Activity Log</a>
                        </li>
                        <li>
                            <button type="button" class="close ms-toggler text-center" data-target="#ms-recent-activity" data-toggle="slideRight">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </li>
                    </ul>
                </div>
                <div class="ms-aside-body">
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active fade show" id="activityLog">
                            <ul class="ms-activity-log">
                                <li>
                                    <div class="ms-btn-icon btn-pill icon btn-light">
                                        <i class="flaticon-gear"></i>
                                    </div>
                                    <h6>Update 1.0.0 Pushed</h6>
                                    <span><i class="material-icons">event</i>1 January, 2019</span>
                                    <p class="fs-14">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque scelerisque diam non nisi semper, ula in sodales vehicula....</p>
                                </li>
                                <li>
                                    <div class="ms-btn-icon btn-pill icon btn-success">
                                        <i class="flaticon-tick-inside-circle"></i>
                                    </div>
                                    <h6>Profile Updated</h6>
                                    <span><i class="material-icons">event</i>4 March, 2018</span>
                                    <p class="fs-14">Curabitur purus sem, malesuada eu luctus eget, suscipit sed turpis. Nam pellentesque felis vitae justo accumsan, sed semper nisi sollicitudin...</p>
                                </li>
                                <li>
                                    <div class="ms-btn-icon btn-pill icon btn-warning">
                                        <i class="flaticon-alert-1"></i>
                                    </div>
                                    <h6>Your payment is due</h6>
                                    <span><i class="material-icons">event</i>1 January, 2019</span>
                                    <p class="fs-14">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque scelerisque diam non nisi semper, ula in sodales vehicula....</p>
                                </li>
                                <li>
                                    <div class="ms-btn-icon btn-pill icon btn-danger">
                                        <i class="flaticon-alert"></i>
                                    </div>
                                    <h6>Database Error</h6>
                                    <span><i class="material-icons">event</i>4 March, 2018</span>
                                    <p class="fs-14">Curabitur purus sem, malesuada eu luctus eget, suscipit sed turpis. Nam pellentesque felis vitae justo accumsan, sed semper nisi sollicitudin...</p>
                                </li>
                                <li>
                                    <div class="ms-btn-icon btn-pill icon btn-info">
                                        <i class="flaticon-information"></i>
                                    </div>
                                    <h6>Checkout what's Trending</h6>
                                    <span><i class="material-icons">event</i>1 January, 2019</span>
                                    <p class="fs-14">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque scelerisque diam non nisi semper, ula in sodales vehicula....</p>
                                </li>
                                <li>
                                    <div class="ms-btn-icon btn-pill icon btn-secondary">
                                        <i class="flaticon-diamond"></i>
                                    </div>
                                    <h6>Your Dashboard is ready</h6>
                                    <span><i class="material-icons">event</i>4 March, 2018</span>
                                    <p class="fs-14">Curabitur purus sem, malesuada eu luctus eget, suscipit sed turpis. Nam pellentesque felis vitae justo accumsan, sed semper nisi sollicitudin...</p>
                                </li>
                            </ul>
                            <a href="#" class="btn btn-primary d-block">View All </a>
                        </div>
                    </div>
                </div>
            </aside>
            <!-- Main Content -->
            <main class="body-content">
                <!-- Navigation Bar -->
                <nav class="navbar ms-navbar">
                    <div class="ms-aside-toggler ms-toggler pl-0" data-target="#ms-side-nav" data-toggle="slideLeft">
                        <span class="ms-toggler-bar bg-primary"></span>
                        <span class="ms-toggler-bar bg-primary"></span>
                        <span class="ms-toggler-bar bg-primary"></span>
                    </div>
                    <div class="logo-sn logo-sm ms-d-block-sm">
                        <a class="pl-0 ml-0 text-center navbar-brand mr-0" href="index.html">
                            <img src="assets/img/costic/costic-logo-84x41.png" alt="logo" />
                        </a>
                    </div>
                    <ul class="ms-nav-list ms-inline mb-0" id="ms-nav-options">
                        <li class="ms-nav-item dropdown"><a href="#" class="text-disabled ms-has-notification" id="mailDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="flaticon-mail"></i></a>
                            <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="mailDropdown">
                                <li class="dropdown-menu-header">
                                    <h6 class="dropdown-header ms-inline m-0"><span class="text-disabled">Mail</span></h6>
                                    <span class="badge badge-pill badge-success">3 New</span>
                                </li>
                                <li class="dropdown-divider"></li>
                                <li class="ms-scrollable ms-dropdown-list">
                                    <a class="media p-2" href="#">
                                        <div class="ms-chat-status ms-status-offline ms-chat-img mr-2 align-self-center">
                                            <img src="assets/img/costic/customer-3.jpg" class="ms-img-round" alt="people" />
                                        </div>
                                        <div class="media-body">
                                            <span>Hey man, looking forward to your new project.</span>
                                            <p class="fs-10 my-1 text-disabled"><i class="material-icons">access_time</i> 30 seconds ago</p>
                                        </div>
                                    </a>
                                    <a class="media p-2" href="#">
                                        <div class="ms-chat-status ms-status-online ms-chat-img mr-2 align-self-center">
                                            <img src="assets/img/costic/customer-2.jpg" class="ms-img-round" alt="people" />
                                        </div>
                                        <div class="media-body">
                                            <span>Dear John, I was told you bought Costic! Send me your feedback</span>
                                            <p class="fs-10 my-1 text-disabled"><i class="material-icons">access_time</i> 28 minutes ago</p>
                                        </div>
                                    </a>
                                    <a class="media p-2" href="#">
                                        <div class="ms-chat-status ms-status-offline ms-chat-img mr-2 align-self-center">
                                            <img src="assets/img/costic/customer-1.jpg" class="ms-img-round" alt="people" />
                                        </div>
                                        <div class="media-body">
                                            <span>How many people are we inviting to the dashboard?</span>
                                            <p class="fs-10 my-1 text-disabled"><i class="material-icons">access_time</i> 6 hours ago</p>
                                        </div>
                                    </a>
                                </li>
                                <li class="dropdown-divider"></li>
                                <li class="dropdown-menu-footer text-center"><a href="pages/apps/email.html">Go to Inbox</a>
                                </li>
                            </ul>
                        </li>
                        <li class="ms-nav-item dropdown"><a href="#" class="text-disabled ms-has-notification" id="notificationDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="flaticon-bell"></i></a>
                            <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="notificationDropdown">
                                <li class="dropdown-menu-header">
                                    <h6 class="dropdown-header ms-inline m-0"><span class="text-disabled">Notifications</span></h6>
                                    <span class="badge badge-pill badge-info">4 New</span>
                                </li>
                                <li class="dropdown-divider"></li>
                                <li class="ms-scrollable ms-dropdown-list">
                                    <a class="media p-2" href="#">
                                        <div class="media-body">
                                            <span>12 ways to improve your crypto dashboard</span>
                                            <p class="fs-10 my-1 text-disabled"><i class="material-icons">access_time</i> 30 seconds ago</p>
                                        </div>
                                    </a>
                                    <a class="media p-2" href="#">
                                        <div class="media-body">
                                            <span>You have newly registered users</span>
                                            <p class="fs-10 my-1 text-disabled"><i class="material-icons">access_time</i> 45 minutes ago</p>
                                        </div>
                                    </a>
                                    <a class="media p-2" href="#">
                                        <div class="media-body">
                                            <span>Your account was logged in from an unauthorized IP</span>
                                            <p class="fs-10 my-1 text-disabled"><i class="material-icons">access_time</i> 2 hours ago</p>
                                        </div>
                                    </a>
                                    <a class="media p-2" href="#">
                                        <div class="media-body">
                                            <span>An application form has been submitted</span>
                                            <p class="fs-10 my-1 text-disabled"><i class="material-icons">access_time</i> 1 day ago</p>
                                        </div>
                                    </a>
                                </li>
                                <li class="dropdown-divider"></li>
                                <li class="dropdown-menu-footer text-center"><a href="#">View all Notifications</a>
                                </li>
                            </ul>
                        </li>

                        <li class="ms-nav-item ms-nav-user dropdown">
                            <a href="#" id="userDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <img class="ms-user-img ms-img-round float-right" src="assets/img/costic/customer-6.jpg" alt="people" />
                            </a>
                        </li>
                    </ul>
                    <div class="ms-toggler ms-d-block-sm pr-0 ms-nav-toggler" data-toggle="slideDown" data-target="#ms-nav-options">
                        <span class="ms-toggler-bar bg-primary"></span>
                        <span class="ms-toggler-bar bg-primary"></span>
                        <span class="ms-toggler-bar bg-primary"></span>
                    </div>
                </nav>
                <div class="ms-content-wrapper">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="db-header-title">Welcome, Anny</h1>
                        </div>
                        <div class="col-xl-3 col-lg-6 col-md-6">
                            <div class="ms-card ms-widget has-graph-full-width ms-infographics-widget">
                                <span class="ms-chart-label bg-black"><i class="material-icons">arrow_upward</i> 3.2%</span>
                                <div class="ms-card-body media">
                                    <div class="media-body">
                                        <span class="black-text"><strong>Sells Graph</strong></span>
                                        <h2>$8,451</h2>
                                    </div>
                                </div>
                                <canvas id="line-chart"></canvas>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 col-md-6">
                            <div class="ms-card ms-widget has-graph-full-width ms-infographics-widget">
                                <span class="ms-chart-label bg-red"><i class="material-icons">arrow_downward</i> 4.5%</span>
                                <div class="ms-card-body media">
                                    <div class="media-body">
                                        <span class="black-text"><strong>Total Visitors</strong></span>
                                        <h2>3,973</h2>
                                    </div>
                                </div>
                                <canvas id="line-chart-2"></canvas>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 col-md-6">
                            <div class="ms-card ms-widget has-graph-full-width ms-infographics-widget">
                                <span class="ms-chart-label bg-black"><i class="material-icons">arrow_upward</i> 12.5%</span>
                                <div class="ms-card-body media">
                                    <div class="media-body">
                                        <span class="black-text"><strong>New Users</strong></span>
                                        <h2>7,333</h2>
                                    </div>
                                </div>
                                <canvas id="line-chart-3"></canvas>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 col-md-6">
                            <div class="ms-card ms-widget has-graph-full-width ms-infographics-widget">
                                <span class="ms-chart-label bg-red"><i class="material-icons">arrow_upward</i> 9.5%</span>
                                <div class="ms-card-body media">
                                    <div class="media-body">
                                        <span class="black-text"><strong>Total Orders</strong></span>
                                        <h2>48,973</h2>
                                    </div>
                                </div>
                                <canvas id="line-chart-4"></canvas>
                            </div>
                        </div>
                        <!-- Recent Orders Requested -->


                        <!-- Food Orders -->
                        <div class="col-md-12">
                            <div class="ms-panel">
                                <div class="ms-panel-header">
                                    <h6>Trending Orders</h6>
                                </div>
                                <div class="ms-panel-body">
                                    <div class="row">

                                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
                                            <div class="ms-card no-margin">
                                                <div class="ms-card-img">
                                                    <img src="assets/img/costic/food-5.jpg" alt="card_img" />
                                                </div>
                                                <div class="ms-card-body">
                                                    <div class="ms-card-heading-title">
                                                        <h6>Meat Stew</h6>
                                                        <span class="green-text"><strong>$25.00</strong></span>
                                                    </div>

                                                    <div class="ms-card-heading-title">
                                                        <p>Orders <span class="red-text">15</span></p>
                                                        <p>Income <span class="red-text">$175</span></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
                                            <div class="ms-card no-margin">
                                                <div class="ms-card-img">
                                                    <img src="assets/img/costic/food-2.jpg" alt="card_img" />
                                                </div>
                                                <div class="ms-card-body">
                                                    <div class="ms-card-heading-title">
                                                        <h6>Pancake</h6>
                                                        <span class="green-text"><strong>$50.00</strong></span>
                                                    </div>

                                                    <div class="ms-card-heading-title">
                                                        <p>Orders <span class="red-text">75</span></p>
                                                        <p>Income <span class="red-text">$275</span></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
                                            <div class="ms-card no-margin">
                                                <div class="ms-card-img">
                                                    <img src="assets/img/costic/food-4.jpg" alt="card_img" />
                                                </div>
                                                <div class="ms-card-body">
                                                    <div class="ms-card-heading-title">
                                                        <h6>Burger</h6>
                                                        <span class="green-text"><strong>$45.00</strong></span>
                                                    </div>

                                                    <div class="ms-card-heading-title">
                                                        <p>Orders <span class="red-text">85</span></p>
                                                        <p>Income <span class="red-text">$575</span></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
                                            <div class="ms-card no-margin">
                                                <div class="ms-card-img">
                                                    <img src="assets/img/costic/food-3.jpg" alt="card_img" />
                                                </div>
                                                <div class="ms-card-body">
                                                    <div class="ms-card-heading-title">
                                                        <h6>Saled</h6>
                                                        <span class="green-text"><strong>$85.00</strong></span>
                                                    </div>
                                                    <div class="ms-card-heading-title">
                                                        <p>Orders <span class="red-text">175</span></p>
                                                        <p>Income <span class="red-text">$775</span></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END/Food Orders -->
                        <!-- Recent Orders Requested -->
                        <div class="col-xl-7 col-md-12">
                            <div class="ms-panel ms-panel-fh">
                                <div class="ms-panel-header">
                                    <div class="d-flex justify-content-between">
                                        <div class="ms-header-text">
                                            <h6>Order Timing Chart</h6>
                                        </div>
                                    </div>

                                </div>
                                <div class="ms-panel-body pt-0">
                                    <div class="d-flex justify-content-between ms-graph-meta">
                                        <ul class="ms-list-flex mt-3 mb-5">
                                            <li>
                                                <span>Total Orders</span>
                                                <h3 class="ms-count">703,49</h3>
                                            </li>
                                            <li>
                                                <span>New Orders</span>
                                                <h3 class="ms-count">95,038</h3>
                                            </li>
                                            <li>
                                                <span>Repeat Orders</span>
                                                <h3 class="ms-count">28,387</h3>
                                            </li>
                                            <li>
                                                <span>Cancel Orders</span>
                                                <h3 class="ms-count">260</h3>
                                            </li>
                                        </ul>
                                    </div>
                                    <canvas id="youtube-subscribers"></canvas>
                                </div>
                            </div>
                        </div>

                        <!-- Favourite Products -->
                        <div class="col-xl-5 col-md-12">
                            <div class="ms-panel ms-widget ms-crypto-widget">
                                <div class="ms-panel-header">
                                    <h6>Favourite charts</h6>
                                </div>
                                <div class="ms-panel-body p-0">
                                    <ul class="nav nav-tabs nav-justified has-gap px-4 pt-4" role="tablist">
                                        <li role="presentation" class="fs-12"><a href="#btc" aria-controls="btc" class="active show" role="tab" data-toggle="tab">Mon </a></li>
                                        <li role="presentation" class="fs-12"><a href="#xrp" aria-controls="xrp" role="tab" data-toggle="tab">Tue </a></li>
                                        <li role="presentation" class="fs-12"><a href="#ltc" aria-controls="ltc" role="tab" data-toggle="tab">Wed </a></li>
                                        <li role="presentation" class="fs-12"><a href="#eth" aria-controls="eth" role="tab" data-toggle="tab">Thu </a></li>
                                        <li role="presentation" class="fs-12"><a href="#zec" aria-controls="zec" role="tab" data-toggle="tab">Fri </a></li>
                                    </ul>
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane active show fade in" id="btc">
                                            <div class="table-responsive">
                                                <table class="table table-hover thead-light">
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">Restaurant Names</th>
                                                            <th scope="col">Qty</th>
                                                            <th scope="col">Orders</th>
                                                            <th scope="col">Profit</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>Hunger House</td>
                                                            <td>8528</td>
                                                            <td class="ms-text-success">+17.24%</td>
                                                            <td>7.65%</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Food Lounge</td>
                                                            <td>4867</td>
                                                            <td class="ms-text-danger">-12.24%</td>
                                                            <td>9.12%</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Delizious</td>
                                                            <td>7538</td>
                                                            <td class="ms-text-success">+32.04%</td>
                                                            <td>14.29%</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Netherfood</td>
                                                            <td>1614</td>
                                                            <td class="ms-text-danger">-20.75%</td>
                                                            <td>12.25%</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Rusmiz</td>
                                                            <td>7538</td>
                                                            <td class="ms-text-success">+32.04%</td>
                                                            <td>14.29%</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div role="tabpanel" class="tab-pane fade" id="xrp">
                                            <div class="table-responsive">
                                                <table class="table table-hover thead-light">
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">Restaurant Name</th>
                                                            <th scope="col">Qty</th>
                                                            <th scope="col">Orders</th>
                                                            <th scope="col">Profit</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>Hunger House</td>
                                                            <td>8528</td>
                                                            <td class="ms-text-success">+17.24%</td>
                                                            <td>7.65%</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Food Lounge</td>
                                                            <td>4867</td>
                                                            <td class="ms-text-danger">-12.24%</td>
                                                            <td>9.12%</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Delizious</td>
                                                            <td>7538</td>
                                                            <td class="ms-text-success">+32.04%</td>
                                                            <td>14.29%</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Netherfood</td>
                                                            <td>1614</td>
                                                            <td class="ms-text-danger">-20.75%</td>
                                                            <td>12.25%</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Rusmiz</td>
                                                            <td>7538</td>
                                                            <td class="ms-text-success">+32.04%</td>
                                                            <td>14.29%</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div role="tabpanel" class="tab-pane fade" id="ltc">
                                            <div class="table-responsive">
                                                <table class="table table-hover thead-light">
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">Restaurant Name</th>
                                                            <th scope="col">Qty</th>
                                                            <th scope="col">Orders</th>
                                                            <th scope="col">Profit</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>Hunger House</td>
                                                            <td>8528</td>
                                                            <td class="ms-text-success">+17.24%</td>
                                                            <td>7.65%</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Food Lounge</td>
                                                            <td>4867</td>
                                                            <td class="ms-text-danger">-12.24%</td>
                                                            <td>9.12%</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Delizious</td>
                                                            <td>7538</td>
                                                            <td class="ms-text-success">+32.04%</td>
                                                            <td>14.29%</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Netherfood</td>
                                                            <td>1614</td>
                                                            <td class="ms-text-danger">-20.75%</td>
                                                            <td>12.25%</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Rusmiz</td>
                                                            <td>7538</td>
                                                            <td class="ms-text-success">+32.04%</td>
                                                            <td>14.29%</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div role="tabpanel" class="tab-pane fade" id="eth">
                                            <div class="table-responsive">
                                                <table class="table table-hover thead-light">
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">Restaurant Name</th>
                                                            <th scope="col">Qty</th>
                                                            <th scope="col">Orders</th>
                                                            <th scope="col">Profit</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>Hunger House</td>
                                                            <td>8528</td>
                                                            <td class="ms-text-success">+17.24%</td>
                                                            <td>7.65%</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Food Lounge</td>
                                                            <td>4867</td>
                                                            <td class="ms-text-danger">-12.24%</td>
                                                            <td>9.12%</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Delizious</td>
                                                            <td>7538</td>
                                                            <td class="ms-text-success">+32.04%</td>
                                                            <td>14.29%</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Netherfood</td>
                                                            <td>1614</td>
                                                            <td class="ms-text-danger">-20.75%</td>
                                                            <td>12.25%</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Rusmiz</td>
                                                            <td>7538</td>
                                                            <td class="ms-text-success">+32.04%</td>
                                                            <td>14.29%</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div role="tabpanel" class="tab-pane fade" id="zec">
                                            <div class="table-responsive">
                                                <table class="table table-hover thead-light">
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">Restaurant Name</th>
                                                            <th scope="col">Qty</th>
                                                            <th scope="col">Orders</th>
                                                            <th scope="col">Profit</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>Hunger House</td>
                                                            <td>8528</td>
                                                            <td class="ms-text-success">+17.24%</td>
                                                            <td>7.65%</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Food Lounge</td>
                                                            <td>4867</td>
                                                            <td class="ms-text-danger">-12.24%</td>
                                                            <td>9.12%</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Delizious</td>
                                                            <td>7538</td>
                                                            <td class="ms-text-success">+32.04%</td>
                                                            <td>14.29%</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Netherfood</td>
                                                            <td>1614</td>
                                                            <td class="ms-text-danger">-20.75%</td>
                                                            <td>12.25%</td>
                                                        </tr>
                                                        <tr>
                                                            <td>Rusmiz</td>
                                                            <td>7538</td>
                                                            <td class="ms-text-success">+32.04%</td>
                                                            <td>14.29%</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!-- Favourite Products -->
                            <!-- Total Earnings -->
                            <div class="ms-panel">
                                <div class="ms-panel-header">
                                    <h6>Total Earnings</h6>
                                </div>
                                <div class="ms-panel-body p-0">
                                    <div class="ms-quick-stats">
                                        <div class="ms-stats-grid">
                                            <i class="fa fa-star"></i>
                                            <p class="ms-text-dark">$8,033</p>
                                            <span>Today</span>
                                        </div>
                                        <div class="ms-stats-grid">
                                            <i class="fa fa-university"></i>
                                            <p class="ms-text-dark">$3,039</p>
                                            <span>Yesterday</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Total Earnings -->
                        <!-- Recent Placed Orders< -->
                        <!-- Recent Orders< -->

                        <!-- Recent Support Tickets -->

                        <!-- Recent Support Tickets -->
                        <!-- client chat -->

                        <!-- client chat -->
                    </div>
                </div>
            </main>
            <!-- MODALS -->
            <!-- Quick bar -->

            <!-- Quick bar Content -->
            <div class="ms-quick-bar-content">


                <div class="ms-quick-bar-body tab-content">



                    <div role="tabpanel" class="tab-pane" id="qa-toDo">
                        <div class="ms-quickbar-container ms-todo-list-container ms-scrollable">

                            <div class="ms-add-task-block">
                                <div class="form-group mx-3 mt-0  fs-14 clearfix">
                                    <input type="text" class="form-control fs-14 float-left" id="task-block" name="todo-block" placeholder="Add Task Block" value="" />
                                    <button type="submit" class="ms-btn-icon bg-primary float-right"><i class="material-icons text-disabled">add</i></button>
                                </div>
                            </div>

                            <ul class="ms-todo-list">
                                <li class="ms-card ms-qa-card ms-deletable">

                                    <div class="ms-card-header clearfix">
                                        <h6 class="ms-card-title">Task Block Title</h6>
                                        <button data-toggle="tooltip" data-placement="left" title="Add a Task to this block" class="ms-add-task-to-block ms-btn-icon float-right"><i class="material-icons text-disabled">add</i> </button>
                                    </div>

                                    <div class="ms-card-body">
                                        <ul class="ms-list ms-task-block">
                                            <li class="ms-list-item ms-to-do-task ms-deletable">
                                                <label class="ms-checkbox-wrap ms-todo-complete">
                                                    <input type="checkbox" value="" />
                                                    <i class="ms-checkbox-check"></i>
                                                </label>
                                                <span>Task to do </span>
                                                <button type="submit" class="close"><i class="flaticon-trash ms-delete-trigger"></i></button>
                                            </li>
                                            <li class="ms-list-item ms-to-do-task ms-deletable">
                                                <label class="ms-checkbox-wrap ms-todo-complete">
                                                    <input type="checkbox" value="" />
                                                    <i class="ms-checkbox-check"></i>
                                                </label>
                                                <span>Task to do</span>
                                                <button type="submit" class="close"><i class="flaticon-trash ms-delete-trigger"></i></button>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="ms-card-footer clearfix">
                                        <a href="#" class="text-disabled mr-2"><i class="flaticon-archive"></i>Archive </a>
                                        <a href="#" class="text-disabled  ms-delete-trigger float-right"><i class="flaticon-trash"></i>Delete </a>
                                    </div>

                                </li>
                            </ul>

                        </div>
                    </div>

                    <div role="tabpanel" class="tab-pane" id="qa-reminder">
                        <div class="ms-quickbar-container ms-reminders">

                            <ul class="ms-qa-options">
                                <li><a href="#" data-toggle="modal" data-target="#reminder-modal"><i class="flaticon-bell"></i>New Reminder </a></li>
                            </ul>

                            <div class="ms-quickbar-container ms-scrollable">

                                <div class="ms-card ms-qa-card ms-deletable">
                                    <div class="ms-card-body">
                                        <p>Developer Meeting in Block B </p>
                                        <span class="text-disabled fs-12"><i class="material-icons fs-14">access_time</i> Today - 3:45 pm</span>
                                    </div>
                                    <div class="ms-card-footer clearfix">

                                        <div class="ms-note-editor float-right">
                                            <a href="#" class="text-disabled mr-2" data-toggle="modal" data-target="#reminder-modal"><i class="flaticon-pencil"></i>Edit </a>
                                            <a href="#" class="text-disabled  ms-delete-trigger"><i class="flaticon-trash"></i>Delete </a>
                                        </div>

                                    </div>
                                </div>
                                <div class="ms-card ms-qa-card ms-deletable">
                                    <div class="ms-card-body">
                                        <p>Start adding change log to version 2 </p>
                                        <span class="text-disabled fs-12"><i class="material-icons fs-14">access_time</i> Tomorrow - 12:00 pm</span>
                                    </div>
                                    <div class="ms-card-footer clearfix">

                                        <div class="ms-note-editor float-right">
                                            <a href="#" class="text-disabled mr-2" data-toggle="modal" data-target="#reminder-modal"><i class="flaticon-pencil"></i>Edit </a>
                                            <a href="#" class="text-disabled  ms-delete-trigger"><i class="flaticon-trash"></i>Delete </a>
                                        </div>

                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>

                    <div role="tabpanel" class="tab-pane" id="qa-notes">

                        <ul class="ms-qa-options">
                            <li><a href="#" data-toggle="modal" data-target="#notes-modal"><i class="flaticon-sticky-note"></i>New Note </a></li>
                            <li><a href="#"><i class="flaticon-excel"></i>Export to Excel </a></li>
                        </ul>

                        <div class="ms-quickbar-container ms-scrollable">

                            <div class="ms-card ms-qa-card ms-deletable">
                                <div class="ms-card-header">
                                    <h6 class="ms-card-title">Don't forget to check with the designer</h6>
                                </div>
                                <div class="ms-card-body">
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vulputate urna in faucibus venenatis. Etiam at dapibus neque,
                  vel varius metus. Pellentesque eget orci malesuada, venenatis magna et
                                    </p>
                                    <ul class="ms-note-members clearfix mb-0">
                                        <li class="ms-deletable">
                                            <img src="assets/img/people/people-3.jpg" alt="member" />
                                        </li>
                                        <li class="ms-deletable">
                                            <img src="assets/img/people/people-5.jpg" alt="member" />
                                        </li>
                                    </ul>
                                </div>
                                <div class="ms-card-footer clearfix">

                                    <div class="dropdown float-left">
                                        <a href="#" class="text-disabled" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="flaticon-share-1"></i>Share
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li class="dropdown-menu-header">
                                                <h6 class="dropdown-header ms-inline m-0"><span class="text-disabled">Share With</span></h6>
                                            </li>
                                            <li class="dropdown-divider"></li>
                                            <li class="ms-scrollable ms-dropdown-list ms-members-list">
                                                <a class="media p-2" href="#">
                                                    <div class="mr-2 align-self-center">
                                                        <img src="assets/img/people/people-10.jpg" class="ms-img-round" alt="people" />
                                                    </div>
                                                    <div class="media-body">
                                                        <span>John Doe</span>
                                                    </div>
                                                </a>
                                                <a class="media p-2" href="#">
                                                    <div class="mr-2 align-self-center">
                                                        <img src="assets/img/people/people-9.jpg" class="ms-img-round" alt="people" />
                                                    </div>
                                                    <div class="media-body">
                                                        <span>Raymart Sandiago</span>
                                                    </div>
                                                </a>
                                                <a class="media p-2" href="#">
                                                    <div class="mr-2 align-self-center">
                                                        <img src="assets/img/people/people-7.jpg" class="ms-img-round" alt="people" />
                                                    </div>
                                                    <div class="media-body">
                                                        <span>Heather Brown</span>
                                                    </div>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="ms-note-editor float-right">
                                        <a href="#" class="text-disabled mr-2" data-toggle="modal" data-target="#notes-modal"><i class="flaticon-pencil"></i>Edit </a>
                                        <a href="#" class="text-disabled  ms-delete-trigger"><i class="flaticon-trash"></i>Delete </a>
                                    </div>

                                </div>
                            </div>

                            <div class="ms-card ms-qa-card ms-deletable">
                                <div class="ms-card-header">
                                    <h6 class="ms-card-title">Perform the required unit tests</h6>
                                </div>
                                <div class="ms-card-body">
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vulputate urna in faucibus venenatis. Etiam at dapibus neque,
                  vel varius metus. Pellentesque eget orci malesuada, venenatis magna et
                                    </p>
                                    <ul class="ms-note-members clearfix mb-0">
                                        <li class="ms-deletable">
                                            <img src="assets/img/people/people-9.jpg" alt="member" />
                                        </li>
                                    </ul>
                                </div>
                                <div class="ms-card-footer clearfix">

                                    <div class="dropdown float-left">
                                        <a href="#" class="text-disabled" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="flaticon-share-1"></i>Share
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li class="dropdown-menu-header">
                                                <h6 class="dropdown-header ms-inline m-0"><span class="text-disabled">Share With</span></h6>
                                            </li>
                                            <li class="dropdown-divider"></li>
                                            <li class="ms-scrollable ms-dropdown-list ms-members-list">
                                                <a class="media p-2" href="#">
                                                    <div class="mr-2 align-self-center">
                                                        <img src="assets/img/people/people-10.jpg" class="ms-img-round" alt="people" />
                                                    </div>
                                                    <div class="media-body">
                                                        <span>John Doe</span>
                                                    </div>
                                                </a>
                                                <a class="media p-2" href="#">
                                                    <div class="mr-2 align-self-center">
                                                        <img src="assets/img/people/people-9.jpg" class="ms-img-round" alt="people" />
                                                    </div>
                                                    <div class="media-body">
                                                        <span>Raymart Sandiago</span>
                                                    </div>
                                                </a>
                                                <a class="media p-2" href="#">
                                                    <div class="mr-2 align-self-center">
                                                        <img src="assets/img/people/people-7.jpg" class="ms-img-round" alt="people" />
                                                    </div>
                                                    <div class="media-body">
                                                        <span>Heather Brown</span>
                                                    </div>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="ms-note-editor float-right">
                                        <a href="#" class="text-disabled mr-2" data-toggle="modal" data-target="#notes-modal"><i class="flaticon-pencil"></i>Edit </a>
                                        <a href="#" class="text-disabled  ms-delete-trigger"><i class="flaticon-trash"></i>Delete </a>
                                    </div>

                                </div>
                            </div>

                        </div>

                    </div>

                    <div role="tabpanel" class="tab-pane" id="qa-invite">

                        <div class="ms-quickbar-container text-center ms-invite-member">
                            <i class="flaticon-network"></i>
                            <p>Invite Team Members</p>
                            <div>
                                <div class="ms-form-group">
                                    <input type="text" placeholder="Member Email" class="form-control" name="invite-email" value="" />
                                </div>
                                <div class="ms-form-group">
                                    <button type="submit" name="invite-member" class="btn btn-primary w-100">Invite</button>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div role="tabpanel" class="tab-pane" id="qa-settings">

                        <div class="ms-quickbar-container text-center ms-invite-member">
                            <div class="row">
                                <div class="col-md-12 text-left mb-5">
                                    <h4 class="section-title bold">Customize</h4>
                                    <div>
                                        <label class="ms-switch">
                                            <input type="checkbox" id="dark-mode" />
                                            <span class="ms-switch-slider round"></span>
                                        </label>
                                        <span>Dark Mode </span>
                                    </div>
                                    <div>
                                        <label class="ms-switch">
                                            <input type="checkbox" id="remove-quickbar" />
                                            <span class="ms-switch-slider round"></span>
                                        </label>
                                        <span>Remove Quickbar </span>
                                    </div>
                                </div>
                                <div class="col-md-12 text-left">
                                    <h4 class="section-title bold">Keyboard Shortcuts</h4>
                                    <p class="ms-directions mb-0"><code>Esc</code> Close Quick Bar</p>
                                    <p class="ms-directions mb-0"><code>Alt + (1 -&gt; 6)</code> Open Quick Bar Tab</p>
                                    <p class="ms-directions mb-0"><code>Alt + Q</code> Enable Quick Bar Configure Mode</p>

                                </div>
                            </div>
                        </div>

                    </div>

                </div>

            </div>

            <!-- Reminder Modal -->
            <div class="modal fade" id="reminder-modal" tabindex="-1" role="dialog" aria-labelledby="reminder-modal">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header bg-secondary">
                            <h5 class="modal-title has-icon text-white">New Reminder</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div>
                            <div class="modal-body">
                                <div class="ms-form-group">
                                    <label>Remind me about</label>
                                    <textarea class="form-control" name="reminder"></textarea>
                                </div>
                                <div class="ms-form-group">
                                    <span class="ms-option-name fs-14">Repeat Daily</span>
                                    <label class="ms-switch float-right">
                                        <input type="checkbox" />
                                        <span class="ms-switch-slider round"></span>
                                    </label>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="ms-form-group">
                                            <input type="text" class="form-control datepicker" name="reminder-date" value="" />
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="ms-form-group">
                                            <select class="form-control" name="reminder-time">
                                                <option value="">12:00 pm</option>
                                                <option value="">1:00 pm</option>
                                                <option value="">2:00 pm</option>
                                                <option value="">3:00 pm</option>
                                                <option value="">4:00 pm</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-light" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-secondary shadow-none" data-dismiss="modal">Add Reminder</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Notes Modal -->
            <div class="modal fade" id="notes-modal" tabindex="-1" role="dialog" aria-labelledby="notes-modal">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header bg-secondary">
                            <h5 class="modal-title has-icon text-white" id="NoteModal">New Note</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div>
                            <div class="modal-body">
                                <div class="ms-form-group">
                                    <label>Note Title</label>
                                    <input type="text" class="form-control" name="note-title" value="" />
                                </div>
                                <div class="ms-form-group">
                                    <label>Note Description</label>
                                    <textarea class="form-control" name="note-description"></textarea>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-light" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-secondary shadow-none" data-dismiss="modal">Add Note</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="assets/js/jquery-3.3.1.min.js"></script>
  <script src="assets/js/popper.min.js"></script>
  <script src="assets/js/bootstrap.min.js"></script>
  <script src="assets/js/perfect-scrollbar.js">
  </script>
  <script src="assets/js/jquery-ui.min.js">
  </script>
  <!-- Global Required Scripts End -->
  <!-- Page Specific Scripts Start -->

  <script src="assets/js/Chart.bundle.min.js">
  </script>
  <script src="assets/js/widgets.js"> </script>
  <script src="assets/js/clients.js"> </script>
  <script src="assets/js/Chart.Financial.js"> </script>
  <script src="assets/js/d3.v3.min.js">
  </script>
  <script src="assets/js/topojson.v1.min.js">
  </script>
  <script src="assets/js/datatables.min.js">
  </script>
  <script src="assets/js/data-tables.js">
  </script>
  <!-- Page Specific Scripts Finish -->
  <!-- Costic core JavaScript -->
  <script src="assets/js/framework.js"></script>
  <!-- Settings -->
  <script src="assets/js/settings.js"></script>
</body>
</html>
