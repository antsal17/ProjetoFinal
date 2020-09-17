﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="backEndAdminAddProducts.aspx.cs" Inherits="ProjetoFinal.BackEnd.Admin.Products.backEndAdminAddProducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>Dashboard</title>
    <!-- Iconic Fonts -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link href="../../vendors/iconic-fonts/font-awesome/css/all.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="../vendors/iconic-fonts/flat-icons/flaticon.css" />
    <link rel="stylesheet" href="../vendors/iconic-fonts/cryptocoins/cryptocoins.css" />
    <link rel="stylesheet" href="../vendors/iconic-fonts/cryptocoins/cryptocoins-colors.css" />
    <!-- Bootstrap core CSS -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
    <!-- jQuery UI -->
    <link href="../assets/css/jquery-ui.min.css" rel="stylesheet" />
    <!-- Page Specific CSS (Slick Slider.css) -->
    <link href="../assets/css/slick.css" rel="stylesheet" />
    <!-- Costic styles -->
    <link href="../assets/css/style.css" rel="stylesheet" />
    <!-- Favicon -->
    <link rel="icon" type="image/png" sizes="32x32" href="../favicon.ico" />
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
                    <a class="pl-0 ml-0 text-center" href="#">
                        <img src="../assets/img/costic/costic-logo-216x62.png" alt="logo" />
                    </a>
                </div>

                <!-- Navigation -->
                <ul class="accordion ms-main-aside fs-14" id="side-nav-accordion">
                    <!-- Dashboard -->
                    <li class="menu-item">
                        <a href="#" data-target="#dashboard" aria-expanded="false" aria-controls="dashboard"><span><i class="material-icons fs-16">dashboard</i>Dashboard </span>
                        </a>
                    </li>
                    <!-- /Dashboard -->
                    <!-- product -->

                    <li class="menu-item">
                        <a href="#" class="has-chevron" data-toggle="collapse" data-target="#product" aria-expanded="false" aria-controls="product">
                            <span><i class="fa fa-archive fs-16"></i>Products </span>
                        </a>
                        <ul id="product" class="collapse" aria-labelledby="product" data-parent="#side-nav-accordion">
                            <li><a href="productlist.html">Product List</a> </li>
                            <li><a href="addproduct.html">Add Product</a> </li>
                            <li><a href="productdetail.html">Product Detail</a> </li>

                        </ul>
                    </li>
                    <!-- product end -->

                    <!-- orders -->
                    <li class="menu-item">
                        <a href="../orders.html">
                            <span><i class="fas fa-clipboard-list fs-16"></i>Orders</span>
                        </a>
                    </li>
                    <!-- orders end -->
                    <!-- Invoice -->

                    <li class="menu-item">
                        <a href="#" class="has-chevron" data-toggle="collapse" data-target="#invoice" aria-expanded="false" aria-controls="invoice">
                            <span><i class="fas fa-file-invoice fs-16"></i>Invoice </span>
                        </a>
                        <ul id="invoice" class="collapse" aria-labelledby="invoice" data-parent="#side-nav-accordion">
                            <li><a href="../invoice/invoicedetail.html">Invoice Detail</a> </li>
                            <li><a href="../invoice/invoicelist.html">Invoice List</a> </li>

                        </ul>
                    </li>
                    <!-- Invoice end -->

                    <!-- customers-->

                    <li class="menu-item">
                        <a href="#" class="has-chevron" data-toggle="collapse" data-target="#customer" aria-expanded="false" aria-controls="customer">
                            <span><i class="fas fa-user-friends fs-16"></i>Customers </span>
                        </a>
                        <ul id="customer" class="collapse" aria-labelledby="customer" data-parent="#side-nav-accordion">
                            <li><a href="../customer/customersreview.html">Customers Review</a> </li>
                            <li><a href="../customer/customerlist.html">Customers List</a> </li>
                            <li><a href="../customer/addcustomer.html">Add Customer</a></li>


                        </ul>
                    </li>
                    <!-- Customers  end -->
                    <!-- Apps -->
                    <li class="menu-item">
                        <a href="#" class="has-chevron" data-toggle="collapse" data-target="#apps" aria-expanded="false" aria-controls="apps"><span><i class="material-icons fs-16">mode_comment</i>Chat</span>
                        </a>
                        <ul id="apps" class="collapse" aria-labelledby="apps" data-parent="#side-nav-accordion">
                            <li><a href="../apps/chat.html">Chat</a> </li>
                            <li><a href="../apps/email.html">Email</a> </li>
                        </ul>
                    </li>
                    <!-- /Apps -->
                </ul>


            </aside>


            <!-- Sidebar Right -->
            <aside id="ms-recent-activity" class="side-nav fixed ms-aside-right ms-scrollable">

                <div class="ms-aside-header">
                    <ul class="nav nav-tabs tabs-bordered d-flex nav-justified mb-3" role="tablist">
                        <li role="presentation" class="fs-12"><a href="#activityLog" aria-controls="activityLog" class="active" role="tab" data-toggle="tab">Activity Log</a></li>

                        <li>
                            <button type="button" class="close ms-toggler text-center" data-target="#ms-recent-activity" data-toggle="slideRight"><span aria-hidden="true">&times;</span></button></li>
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
                        <a class="pl-0 ml-0 text-center navbar-brand mr-0" href="../../index.html">
                            <img src="../assets/img/costic/costic-logo-84x41.png" alt="logo" />
                        </a>
                    </div>

                    <ul class="ms-nav-list ms-inline mb-0" id="ms-nav-options">
                        <li class="ms-nav-item ms-search-form pb-0 py-0">
                            <div class="ms-form">
                                <div class="ms-form-group my-0 mb-0 has-icon fs-14">
                                    <input type="search" class="ms-form-input" name="search" placeholder="Search here..." value="" />
                                    <i class="flaticon-search text-disabled"></i>
                                </div>
                            </div>
                        </li>
                        <li class="ms-nav-item dropdown">
                            <a href="#" class="text-disabled ms-has-notification" id="mailDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="flaticon-mail"></i></a>
                            <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="mailDropdown">
                                <li class="dropdown-menu-header">
                                    <h6 class="dropdown-header ms-inline m-0"><span class="text-disabled">Mail</span></h6>
                                    <span class="badge badge-pill badge-success">3 New</span>
                                </li>
                                <li class="dropdown-divider"></li>
                                <li class="ms-scrollable ms-dropdown-list">
                                    <a class="media p-2" href="#">
                                        <div class="ms-chat-status ms-status-offline ms-chat-img mr-2 align-self-center">
                                            <img src="../assets/img/costic/customer-1.jpg" class="ms-img-round" alt="people" />
                                        </div>
                                        <div class="media-body">
                                            <span>Hey man, looking forward to your new project.</span>
                                            <p class="fs-10 my-1 text-disabled"><i class="material-icons">access_time</i> 30 seconds ago</p>
                                        </div>
                                    </a>
                                    <a class="media p-2" href="#">
                                        <div class="ms-chat-status ms-status-online ms-chat-img mr-2 align-self-center">
                                            <img src="../assets/img/costic/customer-2.jpg" class="ms-img-round" alt="people" />
                                        </div>
                                        <div class="media-body">
                                            <span>Dear John, I was told you bought Costic! Send me your feedback</span>
                                            <p class="fs-10 my-1 text-disabled"><i class="material-icons">access_time</i> 28 minutes ago</p>
                                        </div>
                                    </a>
                                    <a class="media p-2" href="#">
                                        <div class="ms-chat-status ms-status-offline ms-chat-img mr-2 align-self-center">
                                            <img src="../assets/img/costic/customer-3.jpg" class="ms-img-round" alt="people" />
                                        </div>
                                        <div class="media-body">
                                            <span>How many people are we inviting to the dashboard?</span>
                                            <p class="fs-10 my-1 text-disabled"><i class="material-icons">access_time</i> 6 hours ago</p>
                                        </div>
                                    </a>
                                </li>
                                <li class="dropdown-divider"></li>
                                <li class="dropdown-menu-footer text-center">
                                    <a href="../apps/email.html">Go to Inbox</a>
                                </li>
                            </ul>
                        </li>
                        <li class="ms-nav-item dropdown">
                            <a href="#" class="text-disabled ms-has-notification" id="notificationDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="flaticon-bell"></i></a>
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
                                <li class="dropdown-menu-footer text-center">
                                    <a href="#">View all Notifications</a>
                                </li>
                            </ul>
                        </li>

                        <li class="ms-nav-item ms-nav-user dropdown">
                            <a href="#" id="userDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <img class="ms-user-img ms-img-round float-right" src="../assets/img/costic/customer-6.jpg" alt="people" />
                            </a>
                            <ul class="dropdown-menu dropdown-menu-right user-dropdown" aria-labelledby="userDropdown">
                                <li class="dropdown-menu-header">
                                    <h6 class="dropdown-header ms-inline m-0"><span class="text-disabled">Welcome, Anny Farisha</span></h6>
                                </li>
                                <li class="dropdown-divider"></li>
                                <li class="ms-dropdown-list">
                                    <a class="media fs-14 p-2" href="../prebuilt-pages/user-profile.html"><span><i class="flaticon-user mr-2"></i>Profile</span> </a>
                                    <a class="media fs-14 p-2" href="../apps/email.html"><span><i class="flaticon-mail mr-2"></i>Inbox</span> <span class="badge badge-pill badge-info">3</span> </a>
                                    <a class="media fs-14 p-2" href="../prebuilt-pages/user-profile.html"><span><i class="flaticon-gear mr-2"></i>Account Settings</span> </a>
                                </li>
                                <li class="dropdown-divider"></li>
                                <li class="dropdown-menu-footer">
                                    <a class="media fs-14 p-2" href="../prebuilt-pages/lock-screen.html"><span><i class="flaticon-security mr-2"></i>Lock</span> </a>
                                </li>
                                <li class="dropdown-menu-footer">
                                    <a class="media fs-14 p-2" href="../prebuilt-pages/default-login.html"><span><i class="flaticon-shut-down mr-2"></i>Logout</span> </a>
                                </li>
                            </ul>
                        </li>
                    </ul>

                    <div class="ms-toggler ms-d-block-sm pr-0 ms-nav-toggler" data-toggle="slideDown" data-target="#ms-nav-options">
                        <span class="ms-toggler-bar bg-primary"></span>
                        <span class="ms-toggler-bar bg-primary"></span>
                        <span class="ms-toggler-bar bg-primary"></span>
                    </div>

                </nav>


                <!-- Body Content Wrapper -->
                <div class="ms-content-wrapper">
                    <div class="row">

                        <div class="col-md-12">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb pl-0">
                                    <li class="breadcrumb-item"><a href="#"><i class="material-icons">home</i> Home</a></li>
                                    <li class="breadcrumb-item"><a href="#">Products</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Add Product</li>
                                </ol>
                            </nav>

                            <div class="alert alert-success" role="alert" id="div_insert" runat="server">

                                <asp:Label ID="lbl_insertMsg" runat="server" Text="" visible="false"></asp:Label>
                            </div>
                        </div>




                        
                        <div class="col-xl-6 col-md-12">
                            <div class="ms-panel ms-panel-fh">
                                <div class="ms-panel-header">
                                    <h6>Add Product Form</h6>
                                </div>
                                <div class="ms-panel-body">
                                    <div class="needs-validation clearfix">
                                        <div class="form-row">
                                            <div class="col-md-12 mb-3">
                                                <label for="validationCustom18">Product Name</label>
                                                <div class="input-group">
                                                    <asp:TextBox type="text" class="form-control" id="validationCustom18" runat="server" placeholder="Product Name"></asp:TextBox>
                                                    <div class="valid-feedback">
                                                        Looks good!
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-md-12 mb-3">
                                                <label for="validationCustom22">Select Catagory</label>
                                                <div class="input-group">
                                                    <asp:DropDownList class="form-control" id="validationCustom22" runat="server" DataSourceID="SqlDataSource1" DataTextField="descricao" DataValueField="id">
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjetoFinalConnectionString %>" SelectCommand="SELECT * FROM [categoria]"></asp:SqlDataSource>
                                                    <div class="invalid-feedback">
                                                        Please select a Catagory.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <label for="validationCustom24">Quantity</label>
                                                <div class="input-group">
                                                    <asp:TextBox type="number" class="form-control" id="validationCustom24" placeholder="1" required="required" runat="server"></asp:TextBox>
                                                    <div class="invalid-feedback">
                                                        Quantity
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <label for="validationCustom25">Price</label>
                                                <div class="input-group">
                                                    <asp:TextBox type="text" class="form-control" id="validationCustom25" placeholder="10€" required="required" runat="server"></asp:TextBox>
                                                    <div class="invalid-feedback">
                                                        Price
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12 mb-3">
                                                <label for="validationCustom12">Description</label>
                                                <div class="input-group">
                                                    <textarea rows="5" id="validationCustom12" class="form-control" placeholder="Message" required="required" runat="server"></textarea>
                                                    <div class="invalid-feedback">
                                                        Please provide a message.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12 mb-3">
                                                <label for="validationCustom12">Product Image - Main Image</label>
                                                <div class="custom-file">
                                                    <input type="file" class="custom-file-input" runat="server" id="validatedCustomFile" multiple accept='image/*'/>
                                                     <asp:Label ID="lblMain" class="custom-file-label" for="validatedCustomFile" runat="server" Text="Upload Images..."></asp:Label>
                                                    <div class="invalid-feedback">Example invalid custom file feedback</div>
                                                </div>
                                            </div>
                                            <div class="col-md-12 mb-3">
                                                <label for="validationCustom12">Product Image - Image 1</label>
                                                <div class="custom-file">
                                                    <input type="file" class="custom-file-input" runat="server" id="validatedCustomFile1"/>
                                                    <asp:Label ID="lblImage1" class="custom-file-label" for="validatedCustomFile" runat="server" Text="Upload Images..."></asp:Label>
                                                    <div class="invalid-feedback">Example invalid custom file feedback</div>
                                                </div>
                                            </div>
                                            <div class="col-md-12 mb-3">
                                                <label for="validationCustom12">Product Image - Image 2</label>
                                                <div class="custom-file">
                                                    <input type="file" class="custom-file-input" runat="server" id="validatedCustomFile2">
                                                    <asp:Label ID="lblImage2" class="custom-file-label" for="validatedCustomFile" runat="server" Text="Upload Images..."></asp:Label>
                                                    <div class="invalid-feedback">Example invalid custom file feedback</div>
                                                </div>
                                            </div>
                                            <div class="col-md-12 mb-3">
                                                <label for="validationCustom12">Product Image - Image 3</label>
                                                <div class="custom-file">
                                                    <input type="file" class="custom-file-input" runat="server" id="validatedCustomFile3">
                                                    <asp:Label ID="lblImage3" class="custom-file-label" for="validatedCustomFile" runat="server" Text="Upload Images..."></asp:Label>
                                                    <div class="invalid-feedback">Example invalid custom file feedback</div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <label for="validationCustom24">Utilizador</label>
                                                <div class="input-group">
                                                   <asp:DropDownList ID="DropDownList2" AutoPostBack="true" class="form-control"  runat="server" DataSourceID="SqlDataSource3" DataTextField="username" DataValueField="id">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ProjetoFinalConnectionString %>" SelectCommand="SELECT * FROM [utilizador] INNER JOIN [tipoUtilizador] ON tipoUtilizador.id = utilizador.id_tipoUtilizador WHERE tipoUtilizador.id = 3"></asp:SqlDataSource>

                                                    <div class="invalid-feedback">
                                                        Quantity
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <label for="validationCustom22">Select Address</label>
                                                <div class="input-group">
                                                    <asp:DropDownList class="form-control"  ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="rua" DataValueField="id">
                                        </asp:DropDownList>
             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProjetoFinalConnectionString %>" SelectCommand="select * from utilizador INNER JOIN utilizador_morada ON utilizador_morada.id_utilizador = utilizador.id INNER JOIN morada ON  morada.idMorada = utilizador_morada.id_morada where utilizador.id = @id">
                                        <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList2" Name="id" PropertyName="SelectedValue" Type="Int32" />
                                        </SelectParameters>
                                        </asp:SqlDataSource>

                                                <div class="invalid-feedback">
                                                        Please select a Address.
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="ms-panel-header new">
                                                <p class="medium">Status Available</p>
                                                <div>
                                                    <label class="ms-switch">
                                                        <asp:CheckBox ID="ckbEstado" runat="server" />
                                                        <span class="ms-switch-slider round"></span>
                                                    </label>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="ms-panel-header new">
                                            <asp:Button ID="btn_AddPdc" OnClick="btn_AddPdc_Click" class="btn btn-secondary d-block" type="submit" runat="server" Text="Save" />
                                        </div>
                                    </div>

                                </div>
                            </div>

                        </div>

                        <div class="col-xl-6 col-md-12">
                            <div class="row">
                            </div>
                        </div>

                    </div>
                </div>


            </main>



            <!-- MODALS -->

            <!-- Quick bar -->
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
                                            <img src="../../assets/img/people/people-3.jpg" alt="member" />
                                        </li>
                                        <li class="ms-deletable">
                                            <img src="../../assets/img/people/people-5.jpg" alt="member" />
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
                                                        <img src="../assets/img/people/people-10.jpg" class="ms-img-round" alt="people" />
                                                    </div>
                                                    <div class="media-body">
                                                        <span>John Doe</span>
                                                    </div>
                                                </a>
                                                <a class="media p-2" href="#">
                                                    <div class="mr-2 align-self-center">
                                                        <img src="../assets/img/people/people-9.jpg" class="ms-img-round" alt="people" />
                                                    </div>
                                                    <div class="media-body">
                                                        <span>Raymart Sandiago</span>
                                                    </div>
                                                </a>
                                                <a class="media p-2" href="#">
                                                    <div class="mr-2 align-self-center">
                                                        <img src="../assets/img/people/people-7.jpg" class="ms-img-round" alt="people" />
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
                                            <img src="../assets/img/people/people-9.jpg" alt="member" />
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
                                                        <img src="../assets/img/people/people-10.jpg" class="ms-img-round" alt="people" />
                                                    </div>
                                                    <div class="media-body">
                                                        <span>John Doe</span>
                                                    </div>
                                                </a>
                                                <a class="media p-2" href="#">
                                                    <div class="mr-2 align-self-center">
                                                        <img src="../assets/img/people/people-9.jpg" class="ms-img-round" alt="people" />
                                                    </div>
                                                    <div class="media-body">
                                                        <span>Raymart Sandiago</span>
                                                    </div>
                                                </a>
                                                <a class="media p-2" href="#">
                                                    <div class="mr-2 align-self-center">
                                                        <img src="../assets/img/people/people-7.jpg" class="ms-img-round" alt="people" />
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
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
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
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
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
        </div>
    </form>
    <!-- SCRIPTS -->
    <!-- Global Required Scripts Start -->
    <script src="../assets/js/jquery-3.3.1.min.js"></script>
    <script src="../assets/js/popper.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <script src="../assets/js/perfect-scrollbar.js"> </script>
    <script src="../assets/js/jquery-ui.min.js"> </script>
    <!-- Global Required Scripts End -->

    <!-- Page Specific Scripts Start -->
    <script src="../assets/js/slick.min.js"> </script>
    <script src="../assets/js/moment.js"> </script>
    <script src="../assets/js/jquery.webticker.min.js"> </script>
    <script src="../assets/js/Chart.bundle.min.js"> </script>
    <script src="../assets/js/Chart.Financial.js"> </script>

    <!-- Page Specific Scripts Finish -->

    <!-- Costic core JavaScript -->
    <script src="../assets/js/framework.js"></script>

    <!-- Settings -->
    <script src="../assets/js/settings.js"></script>
</body>
</html>
