<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProjetoFinal.Login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Sign In</title>

    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css"/>

    <link rel="stylesheet" href="css/style.css"/>
    <script src="js/main.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="main">

                <section class="sign-in">
                    <div class="container">
                        <div class="signin-content">
                            <div class="signin-image">
                                <figure>
                                    <img src="images/signin-image.jpg" alt="sing up image"/></figure>
                                <a href="singUp.aspx" class="signup-image-link">Create an account</a>
                                <a href="PassRecovery.aspx" class="signup-image-link">Forgot your Password</a>
                            </div>

                            <div class="signin-form">
                                <h2 class="form-title">Sign in</h2>
                                <div class="register-form" id="login-form">
                                    <div class="form-group">
                                        <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                        <input type="email" name="your_name" id="tb_email_user" placeholder="Your Name" runat="server" required="required"/>
                                    </div>
                                    <div class="form-group">
                                        <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                        <input type="password" name="your_pass" id="tb_pass" placeholder="Password" runat="server" required="required" value='' class="block" onpaste="return false"/>
                                    </div>
                                    <div class="form-group">
                                        <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
                                        <label for="remember-me" class="label-agree-term"><span><span></span></span>Remember me</label>
                                    </div>
                                    <div class="form-group form-button">
                                      <asp:Button type="submit" name="signin" ID="btn_entrar" class="form-submit" Text="Log in" runat="server" OnClick="btn_entrar_Click"/>
                                    </div>
                                    
                                </div>
                                <div class="social-login">
                                    <span class="social-label">Or login with</span>
                                    <ul class="socials">
                                        <li><a href="#"><i class="display-flex-center zmdi zmdi-facebook"></i></a></li>
                                        <li><a href="#"><i class="display-flex-center zmdi zmdi-twitter"></i></a></li>
                                        <li><a href="#"><i class="display-flex-center zmdi zmdi-google"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </form>
    <script src="vendor/jquery/jquery.min.js"></script>
    <script>
        document.getElementById("tb_pass").onkeypress = function (e) {
            var chr = String.fromCharCode(e.which);
            if ("></\"".indexOf(chr) >= 0)
                return false;
        };
    </script>
   
        
    
</body>
</html>
