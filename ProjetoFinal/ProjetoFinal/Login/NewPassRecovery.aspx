﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewPassRecovery.aspx.cs" Inherits="ProjetoFinal.Login.NewPassRecovery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Pass Word Recovery</title>

    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css" />

    <link rel="stylesheet" href="css/style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <div class="main">

                    <section class="sign-in">
                        <div class="container">
                            <div class="signin-content">
                                <div class="signin-image">
                                    <figure>
                                        <img src="images/signin-image.jpg" alt="sing up image">
                                    </figure>
                                    <a href="singUp.aspx" class="signup-image-link">Create an account</a>
                                </div>

                                <div class="signin-form">
                                    <h2 class="form-title">Pass Recovery</h2>
                                    <div method="POST" class="register-form" id="login-form">

                                        <div class="form-group">
                                            <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                            
                                            <input type="password" name="pass" id="pass" placeholder="Password" runat="server" required="required" />
                                        </div>
                                        <div class="form-group">
                                            <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                            <input type="password" name="re_pass" id="re_pass" placeholder="Repeat your password" runat="server" required="required" />
                                        </div>
                                        <div class="form-group form-button">
                                            <asp:Button type="submit" name="signin" ID="btn_recuperar" class="form-submit" Text="Recover" runat="server" OnClick="btn_recuperar_Click" />
                                        </div>

                                    </div>
                                   
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </form>
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
