﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="backEndAdminChat.aspx.cs" Inherits="ProjetoFinal.BackEnd.Admin.Comunication.backEndAdminChat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width,initial-scale=1"/>
  <title>Dashboard</title>
  <!-- Iconic Fonts -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link rel="stylesheet" href="../vendors/iconic-fonts/flat-icons/flaticon.css">
  <link href="../vendors/iconic-fonts/font-awesome/css/all.min.css" rel="stylesheet">
  <!-- Bootstrap core CSS -->
  <link href="../assets/css/bootstrap.min.css" rel="stylesheet">
  <!-- jQuery UI -->
  <link href="../assets/css/jquery-ui.min.css" rel="stylesheet">
  <!-- Costic styles -->
  <link href="../assets/css/style.css" rel="stylesheet">
  <!-- Favicon -->
  <link rel="icon" type="image/png" sizes="32x32" href="../favicon.ico">
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
      <a class="pl-0 ml-0 text-center" href="../../index.html">
        <img src="../assets/img/costic/costic-logo-216x62.png" alt="logo"/>
      </a>
    </div>
    <!-- Navigation -->
    <ul class="accordion ms-main-aside fs-14" id="side-nav-accordion">
      <!-- Dashboard -->
      <li class="menu-item">
        <a href="../../index.html" data-target="#dashboard" aria-expanded="false" aria-controls="dashboard"> <span><i class="material-icons fs-16">dashboard</i>Dashboard </span>
        </a>
      </li>
      <!-- /Dashboard -->
      <!-- product -->
      <li class="menu-item">
        <a href="#" class="has-chevron" data-toggle="collapse" data-target="#product" aria-expanded="false" aria-controls="product"> <span><i class="fa fa-archive fs-16"></i>Products </span>
        </a>
        <ul id="product" class="collapse" aria-labelledby="product" data-parent="#side-nav-accordion">
          <li> <a href="../product/productlist.html">Product List</a>
          </li>
          <li> <a href="../product/addproduct.html">Add Product</a>
          </li>
          <li> <a href="../product/productdetail.html">Product Detail</a>
          </li>
        </ul>
      </li>
      <!-- product end -->
      <!-- orders -->
      <li class="menu-item">
        <a href="../orders.html"> <span><i class="fas fa-clipboard-list fs-16"></i>Orders</span>
        </a>
      </li>
      <!-- orders end -->
      <!-- Invoice -->
      <li class="menu-item">
        <a href="#" class="has-chevron" data-toggle="collapse" data-target="#invoice" aria-expanded="false" aria-controls="invoice"> <span><i class="fas fa-file-invoice fs-16"></i>Invoice </span>
        </a>
        <ul id="invoice" class="collapse" aria-labelledby="invoice" data-parent="#side-nav-accordion">
          <li> <a href="../invoice/invoicedetail.html">Invoice Detail</a>
          </li>
          <li> <a href="../invoice/invoicelist.html">Invoice List</a>
          </li>
        </ul>
      </li>
      <!-- Invoice end -->
      <!-- customers-->
      <li class="menu-item">
        <a href="#" class="has-chevron" data-toggle="collapse" data-target="#customer" aria-expanded="false" aria-controls="customer"> <span><i class="fas fa-user-friends fs-16"></i>Customers </span>
        </a>
        <ul id="customer" class="collapse" aria-labelledby="customer" data-parent="#side-nav-accordion">
          <li> <a href="../customer/customersreview.html">Customers Review</a>
          </li>
          <li> <a href="../customer/customerlist.html">Customers List</a>
          </li>
          <li> <a href="../customer/addcustomer.html">Add Customer</a></li>
        </ul>
      </li>
      <!-- Customers  end -->
      <li class="menu-item">
        <a href="#" class="has-chevron" data-toggle="collapse" data-target="#apps" aria-expanded="false" aria-controls="apps"> <span><i class="material-icons fs-16">phone_iphone</i>Chat</span>
        </a>
        <ul id="apps" class="collapse" aria-labelledby="apps" data-parent="#side-nav-accordion">
          <li> <a href="chat.html">Chat</a>
          </li>
          <li> <a href="email.html">Email</a>
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
        <li role="presentation" class="fs-12"><a href="#activityLog" aria-controls="activityLog" class="active" role="tab" data-toggle="tab"> Activity Log</a>
        </li>


        <li>
          <button type="button" class="close ms-toggler text-center" data-target="#ms-recent-activity" data-toggle="slideRight"><span aria-hidden="true">&times;</span>
          </button>
        </li>
      </ul>
    </div>
    <div class="ms-aside-body">
      <div class="tab-content">
        <div role="tabpanel" class="tab-pane active fade show" id="activityLog">
          <ul class="ms-activity-log">
            <li>
              <div class="ms-btn-icon btn-pill icon btn-light"> <i class="flaticon-gear"></i>
              </div>
              <h6>Update 1.0.0 Pushed</h6>
              <span> <i class="material-icons">event</i>1 January, 2019</span>
              <p class="fs-14">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque scelerisque diam non nisi semper, ula in sodales vehicula....</p>
            </li>
            <li>
              <div class="ms-btn-icon btn-pill icon btn-success"> <i class="flaticon-tick-inside-circle"></i>
              </div>
              <h6>Profile Updated</h6>
              <span> <i class="material-icons">event</i>4 March, 2018</span>
              <p class="fs-14">Curabitur purus sem, malesuada eu luctus eget, suscipit sed turpis. Nam pellentesque felis vitae justo accumsan, sed semper nisi sollicitudin...</p>
            </li>
            <li>
              <div class="ms-btn-icon btn-pill icon btn-warning"> <i class="flaticon-alert-1"></i>
              </div>
              <h6>Your payment is due</h6>
              <span> <i class="material-icons">event</i>1 January, 2019</span>
              <p class="fs-14">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque scelerisque diam non nisi semper, ula in sodales vehicula....</p>
            </li>
            <li>
              <div class="ms-btn-icon btn-pill icon btn-danger"> <i class="flaticon-alert"></i>
              </div>
              <h6>Database Error</h6>
              <span> <i class="material-icons">event</i>4 March, 2018</span>
              <p class="fs-14">Curabitur purus sem, malesuada eu luctus eget, suscipit sed turpis. Nam pellentesque felis vitae justo accumsan, sed semper nisi sollicitudin...</p>
            </li>
            <li>
              <div class="ms-btn-icon btn-pill icon btn-info"> <i class="flaticon-information"></i>
              </div>
              <h6>Checkout what's Trending</h6>
              <span> <i class="material-icons">event</i>1 January, 2019</span>
              <p class="fs-14">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque scelerisque diam non nisi semper, ula in sodales vehicula....</p>
            </li>
            <li>
              <div class="ms-btn-icon btn-pill icon btn-secondary"> <i class="flaticon-diamond"></i>
              </div>
              <h6>Your Dashboard is ready</h6>
              <span> <i class="material-icons">event</i>4 March, 2018</span>
              <p class="fs-14">Curabitur purus sem, malesuada eu luctus eget, suscipit sed turpis. Nam pellentesque felis vitae justo accumsan, sed semper nisi sollicitudin...</p>
            </li>
          </ul> <a href="#" class="btn btn-primary d-block"> View All </a>
        </div>

      </div>
    </div>
  </aside>
  <!-- Main Content -->
  <main class="body-content">
    <!-- Navigation Bar -->
    <nav class="navbar ms-navbar">
      <div class="ms-aside-toggler ms-toggler pl-0" data-target="#ms-side-nav" data-toggle="slideLeft"> <span class="ms-toggler-bar bg-primary"></span>
        <span class="ms-toggler-bar bg-primary"></span>
        <span class="ms-toggler-bar bg-primary"></span>
      </div>
      <div class="logo-sn logo-sm ms-d-block-sm">
        <a class="pl-0 ml-0 text-center navbar-brand mr-0" href="../../index.html">
          <img src="../assets/img/costic/costic-logo-84x41.png" alt="logo">
        </a>
      </div>
      <ul class="ms-nav-list ms-inline mb-0" id="ms-nav-options">
        <li class="ms-nav-item ms-search-form pb-0 py-0">
          <form class="ms-form" method="post">
            <div class="ms-form-group my-0 mb-0 has-icon fs-14">
              <input type="search" class="ms-form-input" name="search" placeholder="Search here..." value=""> <i class="flaticon-search text-disabled"></i>
            </div>
          </form>
        </li>
        <li class="ms-nav-item dropdown"> <a href="#" class="text-disabled ms-has-notification" id="mailDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="flaticon-mail"></i></a>
          <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="mailDropdown">
            <li class="dropdown-menu-header">
              <h6 class="dropdown-header ms-inline m-0"><span class="text-disabled">Mail</span></h6><span class="badge badge-pill badge-success">3 New</span>
            </li>
            <li class="dropdown-divider"></li>
            <li class="ms-scrollable ms-dropdown-list">
              <a class="media p-2" href="#">
                <div class="ms-chat-status ms-status-offline ms-chat-img mr-2 align-self-center">
                  <img src="../assets/img/costic/customer-1.jpg" class="ms-img-round" alt="people"/>
                </div>
                <div class="media-body"> <span>Hey man, looking forward to your new project.</span>
                  <p class="fs-10 my-1 text-disabled"><i class="material-icons">access_time</i> 30 seconds ago</p>
                </div>
              </a>
              <a class="media p-2" href="#">
                <div class="ms-chat-status ms-status-online ms-chat-img mr-2 align-self-center">
                  <img src="../assets/img/costic/customer-2.jpg" class="ms-img-round" alt="people"/>
                </div>
                <div class="media-body"> <span>Dear John, I was told you bought Costic! Send me your feedback</span>
                  <p class="fs-10 my-1 text-disabled"><i class="material-icons">access_time</i> 28 minutes ago</p>
                </div>
              </a>
              <a class="media p-2" href="#">
                <div class="ms-chat-status ms-status-offline ms-chat-img mr-2 align-self-center">
                  <img src="../assets/img/costic/customer-3.jpg" class="ms-img-round" alt="people"/>
                </div>
                <div class="media-body"> <span>How many people are we inviting to the dashboard?</span>
                  <p class="fs-10 my-1 text-disabled"><i class="material-icons">access_time</i> 6 hours ago</p>
                </div>
              </a>
            </li>
            <li class="dropdown-divider"></li>
            <li class="dropdown-menu-footer text-center"> <a href="email.html">Go to Inbox</a>
            </li>
          </ul>
        </li>
        <li class="ms-nav-item dropdown"> <a href="#" class="text-disabled ms-has-notification" id="notificationDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="flaticon-bell"></i></a>
          <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="notificationDropdown">
            <li class="dropdown-menu-header">
              <h6 class="dropdown-header ms-inline m-0"><span class="text-disabled">Notifications</span></h6><span class="badge badge-pill badge-info">4 New</span>
            </li>
            <li class="dropdown-divider"></li>
            <li class="ms-scrollable ms-dropdown-list">
              <a class="media p-2" href="#">
                <div class="media-body"> <span>12 ways to improve your crypto dashboard</span>
                  <p class="fs-10 my-1 text-disabled"><i class="material-icons">access_time</i> 30 seconds ago</p>
                </div>
              </a>
              <a class="media p-2" href="#">
                <div class="media-body"> <span>You have newly registered users</span>
                  <p class="fs-10 my-1 text-disabled"><i class="material-icons">access_time</i> 45 minutes ago</p>
                </div>
              </a>
              <a class="media p-2" href="#">
                <div class="media-body"> <span>Your account was logged in from an unauthorized IP</span>
                  <p class="fs-10 my-1 text-disabled"><i class="material-icons">access_time</i> 2 hours ago</p>
                </div>
              </a>
              <a class="media p-2" href="#">
                <div class="media-body"> <span>An application form has been submitted</span>
                  <p class="fs-10 my-1 text-disabled"><i class="material-icons">access_time</i> 1 day ago</p>
                </div>
              </a>
            </li>
            <li class="dropdown-divider"></li>
            <li class="dropdown-menu-footer text-center"> <a href="#">View all Notifications</a>
            </li>
          </ul>
        </li>

        <li class="ms-nav-item ms-nav-user dropdown">
          <a href="#" id="userDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <img class="ms-user-img ms-img-round float-right" src="../assets/img/costic/customer-6.jpg" alt="people"/>
          </a>
          <ul class="dropdown-menu dropdown-menu-right user-dropdown" aria-labelledby="userDropdown">
            <li class="dropdown-menu-header">
              <h6 class="dropdown-header ms-inline m-0"><span class="text-disabled">Welcome, Anny Farisha</span></h6>
            </li>
            <li class="dropdown-divider"></li>
            <li class="ms-dropdown-list">
              <a class="media fs-14 p-2" href="../prebuilt-pages/user-profile.html"> <span><i class="flaticon-user mr-2"></i> Profile</span>
              </a>
              <a class="media fs-14 p-2" href="email.html"> <span><i class="flaticon-mail mr-2"></i> Inbox</span>  <span class="badge badge-pill badge-info">3</span>
              </a>
              <a class="media fs-14 p-2" href="../prebuilt-pages/user-profile.html"> <span><i class="flaticon-gear mr-2"></i> Account Settings</span>
              </a>
            </li>
            <li class="dropdown-divider"></li>
            <li class="dropdown-menu-footer">
              <a class="media fs-14 p-2" href="../prebuilt-pages/lock-screen.html"> <span><i class="flaticon-security mr-2"></i> Lock</span>
              </a>
            </li>
            <li class="dropdown-menu-footer">
              <a class="media fs-14 p-2" href="../prebuilt-pages/default-login.html"> <span><i class="flaticon-shut-down mr-2"></i> Logout</span>
              </a>
            </li>
          </ul>
        </li>
      </ul>
      <div class="ms-toggler ms-d-block-sm pr-0 ms-nav-toggler" data-toggle="slideDown" data-target="#ms-nav-options"> <span class="ms-toggler-bar bg-primary"></span>
        <span class="ms-toggler-bar bg-primary"></span>
        <span class="ms-toggler-bar bg-primary"></span>
      </div>
    </nav>
    <!-- Body Content Wrapper -->
    <div class="ms-content-wrapper">
      <div class="row">
        <!-- Chat Sidebar -->
        <div class="col-xl-4 col-md-12">
          <div class="ms-panel ms-panel-fh">
            <div class="ms-panel-body py-3 px-0">
              <div class="ms-chat-container">
                <div class="ms-chat-header px-3">
                  <div class="ms-chat-user-container media clearfix">
                    <div class="ms-chat-status ms-status-online ms-chat-img mr-3 align-self-center">
                      <img src="../assets/img/costic/customer-1.jpg" class="ms-img-round" alt="people"/>
                    </div>
                    <div class="media-body ms-chat-user-info mt-1">
                      <h6>John Doe</h6>
                      <a href="#" class="text-disabled has-chevron fs-12" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Available
                      </a>
                      <ul class="dropdown-menu">
                        <li class="ms-dropdown-list">
                          <a class="media p-2" href="#">
                            <div class="media-body"> <span>Busy</span>
                            </div>
                          </a>
                          <a class="media p-2" href="#">
                            <div class="media-body"> <span>Away</span>
                            </div>
                          </a>
                          <a class="media p-2" href="#">
                            <div class="media-body"> <span>Offline</span>
                            </div>
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div class="ms-chat-body">
                  <ul class="nav nav-tabs tabs-bordered d-flex nav-justified px-3" role="tablist">
                    <li role="presentation" class="fs-12"><a href="#chats-2" class="active show" role="tab" data-toggle="tab">  </a>
                    </li>
                  </ul>
                  <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active show fade in" id="chats-2">
                      <ul class="ms-scrollable">
                        <li class="ms-chat-user-container ms-open-chat ms-deletable p-3 media clearfix">
                          <div class="ms-chat-status ms-status-away ms-has-new-msg ms-chat-img mr-3 align-self-center"> <span class="msg-count">3</span>
                            <img src="../assets/img/costic/customer-2.jpg" class="ms-img-round" alt="people"/>
                          </div>
                          <div class="media-body ms-chat-user-info mt-1">
                            <h6>John Doe</h6>  <span class="ms-chat-time">2 Hours ago</span>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In in arcu turpis. Nunc</p>
                            <a href="#" class="ms-hoverable-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="material-icons">more_vert</i>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-right">
                              <li class="ms-dropdown-list">
                                <a class="media p-2" href="#">
                                  <div class="media-body"> <span>Archive</span>
                                  </div>
                                </a>
                                <a class="media p-2" href="#">
                                  <div class="media-body"> <span>Pin</span>
                                  </div>
                                </a>
                                <a class="media p-2" href="#">
                                  <div class="media-body"> <span>Delete</span>
                                  </div>
                                </a>
                              </li>
                            </ul>
                          </div>
                        </li>
                        <li class="ms-chat-user-container ms-open-chat ms-deletable p-3 media clearfix">
                          <div class="ms-chat-status ms-status-online ms-chat-img mr-3 align-self-center">
                            <img src="../assets/img/costic/customer-3.jpg" class="ms-img-round" alt="people"/>
                          </div>
                          <div class="media-body ms-chat-user-info mt-1">
                            <h6>John Doe</h6>  <span class="ms-chat-time">3 Hours ago</span>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In in arcu turpis. Nunc</p>
                            <a href="#" class="ms-hoverable-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="material-icons">more_vert</i>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-right">
                              <li class="ms-dropdown-list">
                                <a class="media p-2" href="#">
                                  <div class="media-body"> <span>Archive</span>
                                  </div>
                                </a>
                                <a class="media p-2" href="#">
                                  <div class="media-body"> <span>Pin</span>
                                  </div>
                                </a>
                                <a class="media p-2" href="#">
                                  <div class="media-body"> <span>Delete</span>
                                  </div>
                                </a>
                              </li>
                            </ul>
                          </div>
                        </li>
                        <li class="ms-chat-user-container ms-open-chat selected ms-deletable p-3 media clearfix">
                          <div class="ms-chat-status ms-status-offline ms-chat-img mr-3 align-self-center">
                            <img src="../assets/img/costic/customer-4.jpg" class="ms-img-round" alt="people"/>
                          </div>
                          <div class="media-body ms-chat-user-info mt-1">
                            <h6>John Doe</h6>  <span class="ms-chat-time">12 Hours ago</span>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In in arcu turpis. Nunc</p>
                            <a href="#" class="ms-hoverable-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="material-icons">more_vert</i>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-right">
                              <li class="ms-dropdown-list">
                                <a class="media p-2" href="#">
                                  <div class="media-body"> <span>Archive</span>
                                  </div>
                                </a>
                                <a class="media p-2" href="#">
                                  <div class="media-body"> <span>Pin</span>
                                  </div>
                                </a>
                                <a class="media p-2" href="#">
                                  <div class="media-body"> <span>Delete</span>
                                  </div>
                                </a>
                              </li>
                            </ul>
                          </div>
                        </li>
                        <li class="ms-chat-user-container ms-open-chat ms-deletable p-3 media clearfix">
                          <div class="ms-chat-status ms-status-busy ms-chat-img mr-3 align-self-center">
                            <img src="../assets/img/costic/customer-5.jpg" class="ms-img-round" alt="people"/>
                          </div>
                          <div class="media-body ms-chat-user-info mt-1">
                            <h6>John Doe</h6>  <span class="ms-chat-time">Yesterday</span>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In in arcu turpis. Nunc</p>
                            <a href="#" class="ms-hoverable-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="material-icons">more_vert</i>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-right">
                              <li class="ms-dropdown-list">
                                <a class="media p-2" href="#">
                                  <div class="media-body"> <span>Archive</span>
                                  </div>
                                </a>
                                <a class="media p-2" href="#">
                                  <div class="media-body"> <span>Pin</span>
                                  </div>
                                </a>
                                <a class="media p-2" href="#">
                                  <div class="media-body"> <span>Delete</span>
                                  </div>
                                </a>
                              </li>
                            </ul>
                          </div>
                        </li>
                        <li class="ms-chat-user-container ms-open-chat ms-deletable p-3 media clearfix">
                          <div class="ms-chat-status ms-status-online ms-chat-img mr-3 align-self-center">
                            <img src="../assets/img/costic/customer-6.jpg" class="ms-img-round" alt="people"/>
                          </div>
                          <div class="media-body ms-chat-user-info mt-1">
                            <h6>John Doe</h6>  <span class="ms-chat-time">3 Days ago</span>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In in arcu turpis. Nunc</p>
                            <a href="#" class="ms-hoverable-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="material-icons">more_vert</i>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-right">
                              <li class="ms-dropdown-list">
                                <a class="media p-2" href="#">
                                  <div class="media-body"> <span>Archive</span>
                                  </div>
                                </a>
                                <a class="media p-2" href="#">
                                  <div class="media-body"> <span>Pin</span>
                                  </div>
                                </a>
                                <a class="media p-2" href="#">
                                  <div class="media-body"> <span>Delete</span>
                                  </div>
                                </a>
                              </li>
                            </ul>
                          </div>
                        </li>
                        <li class="ms-chat-user-container ms-open-chat ms-deletable p-3 media clearfix">
                          <div class="ms-chat-status ms-status-online ms-chat-img mr-3 align-self-center">
                            <img src="../assets/img/costic/customer-7.jpg" class="ms-img-round" alt="people"/>
                          </div>
                          <div class="media-body ms-chat-user-info mt-1">
                            <h6>John Doe</h6>  <span class="ms-chat-time">3 Days ago</span>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In in arcu turpis. Nunc</p>
                            <a href="#" class="ms-hoverable-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="material-icons">more_vert</i>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-right">
                              <li class="ms-dropdown-list">
                                <a class="media p-2" href="#">
                                  <div class="media-body"> <span>Archive</span>
                                  </div>
                                </a>
                                <a class="media p-2" href="#">
                                  <div class="media-body"> <span>Pin</span>
                                  </div>
                                </a>
                                <a class="media p-2" href="#">
                                  <div class="media-body"> <span>Delete</span>
                                  </div>
                                </a>
                              </li>
                            </ul>
                          </div>
                        </li>
                        <li class="ms-chat-user-container ms-open-chat ms-deletable p-3 media clearfix">
                          <div class="ms-chat-status ms-status-online ms-chat-img mr-3 align-self-center">
                            <img src="../assets/img/costic/customer-8.jpg" class="ms-img-round" alt="people"/>
                          </div>
                          <div class="media-body ms-chat-user-info mt-1">
                            <h6>John Doe</h6>  <span class="ms-chat-time">3 Days ago</span>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In in arcu turpis. Nunc</p>
                            <a href="#" class="ms-hoverable-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="material-icons">more_vert</i>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-right">
                              <li class="ms-dropdown-list">
                                <a class="media p-2" href="#">
                                  <div class="media-body"> <span>Archive</span>
                                  </div>
                                </a>
                                <a class="media p-2" href="#">
                                  <div class="media-body"> <span>Pin</span>
                                  </div>
                                </a>
                                <a class="media p-2" href="#">
                                  <div class="media-body"> <span>Delete</span>
                                  </div>
                                </a>
                              </li>
                            </ul>
                          </div>
                        </li>
                      </ul>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="groups-2">
                      <ul class="ms-scrollable">
                        <li class="ms-chat-user-container ms-open-chat p-3 media clearfix">
                          <div class="ms-chat-img mr-3 align-self-center">
                            <img src="../assets/img/costic/customer-1.jpg" class="ms-img-round" alt="people"/>
                          </div>
                          <div class="media-body ms-chat-user-info mt-1">
                            <h6>John Doe</h6>
                            <a href="#" class="ms-chat-time"> <i class="flaticon-chat"></i>
                            </a>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In in arcu turpis. Nunc</p>
                            <ul class="ms-group-members clearfix mt-3 mb-0">
                              <li>
                                <img src="../assets/img/costic/customer-2.jpg" alt="member"/>
                              </li>
                              <li>
                                <img src="../assets/img/costic/customer-3.jpg" alt="member"/>
                              </li>
                              <li>
                                <img src="../assets/img/costic/customer-4.jpg" alt="member"/>
                              </li>
                              <li class="ms-group-count">+ 12 more</li>
                            </ul>
                          </div>
                        </li>
                        <li class="ms-chat-user-container ms-open-chat p-3 media clearfix">
                          <div class="ms-chat-img mr-3 align-self-center">
                            <img src="../assets/img/costic/customer-7.jpg" class="ms-img-round" alt="people"/>
                          </div>
                          <div class="media-body ms-chat-user-info mt-1">
                            <h6>John Doe</h6>
                            <a href="#" class="ms-chat-time"> <i class="flaticon-chat"></i>
                            </a>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In in arcu turpis. Nunc</p>
                            <ul class="ms-group-members clearfix mt-3 mb-0">
                              <li>
                                <img src="../assets/img/costic/customer-8.jpg" alt="member"/>
                              </li>
                              <li>
                                <img src="../assets/img/costic/customer-9.jpg" alt="member"/>
                              </li>
                            </ul>
                          </div>
                        </li>
                        <li class="ms-chat-user-container ms-open-chat p-3 media clearfix">
                          <div class="ms-chat-img mr-3 align-self-center">
                            <img src="../assets/img/costic/customer-10.jpg" class="ms-img-round" alt="people"/>
                          </div>
                          <div class="media-body ms-chat-user-info mt-1">
                            <h6>John Doe</h6>
                            <a href="#" class="ms-chat-time"> <i class="flaticon-chat"></i>
                            </a>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In in arcu turpis. Nunc</p>
                            <ul class="ms-group-members clearfix mt-3 mb-0">
                              <li>
                                <img src="../assets/img/costic/customer-1.jpg" alt="member"/>
                              </li>
                              <li>
                                <img src="../assets/img/costic/customer-3.jpg" alt="member"/>
                              </li>
                              <li>
                                <img src="../assets/img/costic/customer-2.jpg" alt="member"/>
                              </li>
                              <li class="ms-group-count">+ 4 more</li>
                            </ul>
                          </div>
                        </li>
                      </ul>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="contacts-2">
                      <ul class="ms-scrollable">
                        <li class="ms-chat-user-container ms-open-chat p-3 media clearfix">
                          <div class="ms-chat-img mr-3 align-self-center">
                            <img src="../assets/img/costic/customer-10.jpg" class="ms-img-round" alt="people"/>
                          </div>
                          <div class="media-body ms-chat-user-info mt-1">
                            <h6>John Doe</h6>
                            <a href="#" class="ms-chat-time"> <i class="flaticon-chat"></i>
                            </a>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In in arcu turpis. Nunc</p>
                          </div>
                        </li>
                        <li class="ms-chat-user-container ms-open-chat p-3 media clearfix">
                          <div class="ms-chat-img mr-3 align-self-center">
                            <img src="../assets/img/costic/customer-9.jpg" class="ms-img-round" alt="people"/>
                          </div>
                          <div class="media-body ms-chat-user-info mt-1">
                            <h6>John Doe</h6>
                            <a href="#" class="ms-chat-time"> <i class="flaticon-chat"></i>
                            </a>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In in arcu turpis. Nunc</p>
                          </div>
                        </li>
                        <li class="ms-chat-user-container ms-open-chat p-3 media clearfix">
                          <div class="ms-chat-img mr-3 align-self-center">
                            <img src="../assets/img/costic/customer-8.jpg" class="ms-img-round" alt="people"/>
                          </div>
                          <div class="media-body ms-chat-user-info mt-1">
                            <h6>John Doe</h6>
                            <a href="#" class="ms-chat-time"> <i class="flaticon-chat"></i>
                            </a>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In in arcu turpis. Nunc</p>
                          </div>
                        </li>
                        <li class="ms-chat-user-container ms-open-chat p-3 media clearfix">
                          <div class="ms-chat-img mr-3 align-self-center">
                            <img src="../assets/img/costic/customer-7.jpg" class="ms-img-round" alt="people"/>
                          </div>
                          <div class="media-body ms-chat-user-info mt-1">
                            <h6>John Doe</h6>
                            <a href="#" class="ms-chat-time"> <i class="flaticon-chat"></i>
                            </a>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In in arcu turpis. Nunc</p>
                          </div>
                        </li>
                        <li class="ms-chat-user-container ms-open-chat p-3 media clearfix">
                          <div class="ms-chat-img mr-3 align-self-center">
                            <img src="../assets/img/costic/customer-6.jpg" class="ms-img-round" alt="people"/>
                          </div>
                          <div class="media-body ms-chat-user-info mt-1">
                            <h6>John Doe</h6>
                            <a href="#" class="ms-chat-time"> <i class="flaticon-chat"></i>
                            </a>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In in arcu turpis. Nunc</p>
                          </div>
                        </li>
                        <li class="ms-chat-user-container ms-open-chat p-3 media clearfix">
                          <div class="ms-chat-img mr-3 align-self-center">
                            <img src="../assets/img/costic/customer-5.jpg" class="ms-img-round" alt="people"/>
                          </div>
                          <div class="media-body ms-chat-user-info mt-1">
                            <h6>John Doe</h6>
                            <a href="#" class="ms-chat-time"> <i class="flaticon-chat"></i>
                            </a>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In in arcu turpis. Nunc</p>
                          </div>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- Chat Body -->
        <div class="col-xl-8 col-md-12">
          <div class="ms-panel ms-chat-conversations ms-widget">
            <div class="ms-panel-header">
              <div class="ms-chat-header justify-content-between">
                <div class="ms-chat-user-container media clearfix">
                  <div class="ms-chat-status ms-status-online ms-chat-img mr-3 align-self-center">
                    <img src="../assets/img/costic/customer-3.jpg" class="ms-img-round" alt="people"/>
                  </div>
                  <div class="media-body ms-chat-user-info mt-1">
                    <h6>John Doe</h6>
                    <span class="text-disabled fs-12">
                      Active Now
                    </span>
                  </div>
                </div>
                <ul class="ms-list ms-list-flex ms-chat-controls">
                  <li data-toggle="tooltip" data-placement="top" title="Call"> <i class="material-icons">local_phone</i>
                  </li>
                  <li data-toggle="tooltip" data-placement="top" title="Video Call"> <i class="material-icons">videocam</i>
                  </li>
                  <li data-toggle="tooltip" data-placement="top" title="Add to Chat"> <i class="material-icons">person_add</i>
                  </li>
                </ul>
              </div>
            </div>
            <div class="ms-panel-body ms-scrollable">
              <div class="ms-chat-bubble ms-chat-message ms-chat-outgoing media clearfix">
                <div class="ms-chat-status ms-status-online ms-chat-img">
                  <img src="../assets/img/costic/customer-3.jpg" class="ms-img-round" alt="people"/>
                </div>
                <div class="media-body">
                  <div class="ms-chat-text">
                    <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,</p>
                  </div>
                  <p class="ms-chat-time">10:33 pm</p>
                </div>
              </div>
              <div class="ms-chat-bubble ms-chat-message media ms-chat-incoming clearfix">
                <div class="ms-chat-status ms-status-online ms-chat-img">
                  <img src="../assets/img/costic/customer-5.jpg" class="ms-img-round" alt="people"/>
                </div>
                <div class="media-body">
                  <div class="ms-chat-text">
                    <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words</p>
                  </div>
                  <p class="ms-chat-time">10:33 pm</p>
                </div>
              </div>
              <div class="ms-chat-bubble ms-chat-message ms-chat-outgoing media clearfix">
                <div class="ms-chat-status ms-status-online ms-chat-img">
                  <img src="../assets/img/costic/customer-3.jpg" class="ms-img-round" alt="people"/>
                </div>
                <div class="media-body">
                  <div class="ms-chat-text">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget orci ex.</p>
                  </div>
                  <p class="ms-chat-time">10:36 pm</p>
                </div>
              </div>
              <div class="ms-chat-bubble ms-chat-message media ms-chat-incoming clearfix">
                <div class="ms-chat-status ms-status-online ms-chat-img">
                  <img src="../assets/img/costic/customer-5.jpg" class="ms-img-round" alt="people"/>
                </div>
                <div class="media-body">
                  <div class="ms-chat-text">
                    <p>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop</p>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                  </div>
                  <p class="ms-chat-time">10:41 pm</p>
                </div>
              </div>
              <div class="ms-chat-bubble ms-chat-message ms-chat-outgoing media clearfix">
                <div class="ms-chat-status ms-status-online ms-chat-img">
                  <img src="../assets/img/costic/customer-3.jpg" class="ms-img-round" alt="people"/>
                </div>
                <div class="media-body">
                  <div class="ms-chat-text">
                    <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
                  </div>
                  <p class="ms-chat-time">10:44 pm</p>
                </div>
              </div>
              <div class="ms-chat-bubble ms-chat-message ms-chat-incoming media clearfix">
                <div class="ms-chat-status ms-status-online ms-chat-img">
                  <img src="../assets/img/costic/customer-5.jpg" class="ms-img-round" alt="people"/>
                </div>
                <div class="media-body">
                  <div class="ms-chat-text">
                    <p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,</p>
                  </div>
                  <p class="ms-chat-time">11:01 pm</p>
                </div>
              </div>
            </div>
            <div class="ms-panel-footer pt-0">
              <div class="ms-chat-textbox">
                <ul class="ms-list-flex mb-0">
                  <li class="ms-chat-vn"><i class="material-icons">mic</i>
                  </li>
                  <li class="ms-chat-input">
                    <input type="text" name="msg" placeholder="Enter Message" value=""/>
                  </li>
                  <li>
                    <ul class="ms-chat-text-controls ms-list-flex">
                      <li> <i class="material-icons">tag_faces</i>
                      </li>
                      <li> <i class="material-icons">attach_file</i>
                      </li>
                      <li> <i class="material-icons">camera_alt</i>
                      </li>
                    </ul>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>
  <!-- MODALS -->
    <!-- Quick bar -->
  <!-- Quick bar -->
  
  <!-- Reminder Modal -->
  <div class="modal fade" id="reminder-modal" tabindex="-1" role="dialog" aria-labelledby="reminder-modal">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header bg-secondary">
          <h5 class="modal-title has-icon text-white"> New Reminder</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div>
          <div class="modal-body">
            <div class="ms-form-group">
              <label>Remind me about</label>
              <textarea class="form-control" name="reminder"></textarea>
            </div>
            <div class="ms-form-group"> <span class="ms-option-name fs-14">Repeat Daily</span>
              <label class="ms-switch float-right">
                <input type="checkbox"/> <span class="ms-switch-slider round"></span>
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
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div>
          <div class="modal-body">
            <div class="ms-form-group">
              <label>Note Title</label>
              <input type="text" class="form-control" name="note-title" value=""/>
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
    </form>
    <script src="../assets/js/jquery-3.3.1.min.js"></script>
  <script src="../assets/js/popper.min.js"></script>
  <script src="../assets/js/bootstrap.min.js"></script>
  <script src="../assets/js/perfect-scrollbar.js">
  </script>
  <script src="../assets/js/jquery-ui.min.js">
  </script>
  <!-- Global Required Scripts End -->
  <!-- Costic core JavaScript -->
  <script src="../assets/js/framework.js"></script>
  <!-- Settings -->
  <script src="../assets/js/settings.js"></script>
</body>
</html>
