<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="singUpCont.aspx.cs" Inherits="ProjetoFinal.Login.singUpCont" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Sign Up - Continue</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css" />

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css" />

    <style>
        input[type="file"] {
            display: none;
        }

        .custom-file-upload {
            border: 1px solid #ccc;
            display: inline-block;
            padding: 6px 12px;
            cursor: pointer;
            table-layout: fixed;
            z-index: -1;
            position: initial;
            margin-top: 20px;
            margin-bottom: -60px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">

            <!-- Sign up form -->
            <section class="sign-in">
                <div class="container">
                    <div class="signin-content">
                        <div class="signin-image">
                            <figure>
                                <img src="images/portugal.png" alt="sing up image" style="margin-top: 40px;" />
                            </figure>

                        </div>

                        <div class="signin-form">
                            <h2 class="form-title">Sign Up</h2>
                            <div class="register-form" id="login-form">
                                <div class="form-group">
                                    <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                    <input type="text" name="your_name" id="name" placeholder="Your Name" runat="server" required="required" />
                                </div>
                                <div class="form-group">
                                    <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                    <input type="text" name="surname" id="surname" placeholder="Your Surname" runat="server" required="required" />
                                </div>
                                <div class="form-group">
                                    <label for="your_name"><i class="zmdi zmdi-phone"></i></label>
                                    <input type="text" name="phone" id="phone" placeholder="Your Phone" runat="server" required="required" />
                                </div>
                                <div class="form-group">
                                    <label for="your_pass"><i class="zmdi zmdi-label"></i></label>
                                    <input type="text" name="nif" id="nif" placeholder="Your Nif" runat="server" title="Introduza um NIF Válido" pattern="^[0-9]\d{8}$" onclick="myFunction()" required="required" />
                                </div>

                                <div class="form-group" style="margin-top: -70px; float: right;">
                                    <input type="checkbox" name="agree" id="agree" runat="server" class="agree-term" />
                                    <label for="agree" class="label-agree-term"><span></span><u>Become a seller</u></label>
                                </div>
                                <div class="form-group form-button">
                                    <asp:Button type="submit" name="signin" ID="btn_register" class="form-submit" Style="margin-top: 1px;" runat="server" Text="Register" OnClick="btn_register_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

        </div>
    </form>
    <script>
        function myFunction() {
            document.getElementById("nif").value = "";
            document.getElementById("nif").style.color = "black";
        }
    </script>
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
