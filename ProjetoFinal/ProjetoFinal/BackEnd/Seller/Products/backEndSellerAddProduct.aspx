<%@ Page Title="" Language="C#" MasterPageFile="~/BackEnd/Seller/masterPageSeller.Master" AutoEventWireup="true" CodeBehind="backEndSellerAddProduct.aspx.cs" Inherits="ProjetoFinal.BackEnd.Seller.Products.backEndSellerAddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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

                    <div class="alert alert-success" role="alert">
                        <strong>Well done!</strong> You successfully read this important alert message.
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
                                            <asp:TextBox type="text" class="form-control" ID="tb_product_name" runat="server" placeholder="Product Name"></asp:TextBox>
                                            <div class="valid-feedback">
                                                Looks good!
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-6 mb-3">
                                        <label for="validationCustom24">Quantity</label>
                                        <div class="input-group">
                                            <asp:TextBox type="number" class="form-control" ID="tb_quantity" placeholder="1" required="required" runat="server"></asp:TextBox>
                                            <div class="invalid-feedback">
                                                Quantity
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <label for="validationCustom25">Price</label>
                                        <div class="input-group">
                                            <asp:TextBox type="text" class="form-control" ID="price" placeholder="10€" required="required" runat="server"></asp:TextBox>
                                            <div class="invalid-feedback">
                                                Price
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12 mb-3">
                                        <label for="validationCustom12">Description</label>
                                        <div class="input-group">
                                            <textarea rows="5" id="desciption" class="form-control" placeholder="Message" required="required" runat="server"></textarea>
                                            <div class="invalid-feedback">
                                                Please provide a message.
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12 mb-3">
                                        <label for="validationCustom12">Product Image - Main Image</label>
                                        <div class="custom-file">
                                            <input type="file" class="custom-file-input" runat="server" id="fu_img" multiple accept='image/*' />
                                            <label class="custom-file-label" for="validatedCustomFile">Upload Images...</label>
                                            <div class="invalid-feedback">Example invalid custom file feedback</div>
                                        </div>
                                    </div>
                                    <div class="ms-panel-header new">
                                        <p class="medium">Status Available</p>
                                        <div>
                                            <label class="ms-switch">
                                                <asp:CheckBox ID="cb_availability" runat="server" />
                                                <span class="ms-switch-slider round"></span>
                                            </label>
                                        </div>
                                    </div>

                                </div>
                                <div class="ms-panel-header new">
                                    <asp:Button ID="btn_AddPdc" class="btn btn-secondary d-block" type="submit" runat="server" Text="Save" />
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


    <script src="../../Admin/assets/js/jquery-3.3.1.min.js"></script>
    <script src="../../Admin/assets/js/popper.min.js"></script>
    <script src="../../Admin/assets/js/bootstrap.min.js"></script>
    <script src="../../Admin/assets/js/perfect-scrollbar.js">
    </script>
    <script src="../../Admin/assets/js/jquery-ui.min.js">
    </script>
    <!-- Global Required Scripts End -->
    <!-- Page Specific Scripts Start -->

    <script src="../../Admin/assets/js/Chart.bundle.min.js">
    </script>
    <script src="../../Admin/assets/js/widgets.js"> </script>
    <script src="../../Admin/assets/js/clients.js"> </script>
    <script src="../../Admin/assets/js/Chart.Financial.js"> </script>
    <script src="../../Admin/assets/js/d3.v3.min.js">
    </script>
    <script src="../../Admin/assets/js/topojson.v1.min.js">
    </script>
    <script src="../../Admin/assets/js/datatables.min.js">
    </script>
    <script src="../../Admin/assets/js/data-tables.js">
    </script>
    <!-- Page Specific Scripts Finish -->
    <!-- Costic core JavaScript -->
    <script src="../../Admin/assets/js/framework.js"></script>
    <!-- Settings -->
    <script src="../../Admin/assets/js/settings.js"></script>
</asp:Content>
