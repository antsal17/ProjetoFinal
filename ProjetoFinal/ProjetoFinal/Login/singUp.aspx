<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="singUp.aspx.cs" Inherits="ProjetoFinal.Login.singUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Sign Up</title>

    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css" />

    <link rel="stylesheet" href="css/style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="padding: 50px 0px">
            <section class="signup">
                <div class="container">
                    <div class="signup-content">
                        <div class="signup-form">
                            <h2 class="form-title">Sign up</h2>
                            <div class="register-form" id="register-form">
                                <div class="form-group">
                                    <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                    <asp:TextBox id="tb_username" placeholder="Your Username" runat="server" onclick="myFunction()"  required="required"></asp:TextBox>
                                    
                                </div>
                                <div class="form-group">
                                    <label for="email"><i class="zmdi zmdi-email"></i></label>
                                    <input type="email" name="email" id="tb_email" placeholder="Your Email" runat="server" required="required" onclick="myFunction()" />
                                </div>
                                <div class="form-group">
                                    <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                    <%--REGEX A FUNCIONAR^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,12}$--%>
                                    <input name="pass" id="pass" placeholder="Password" runat="server" required="required"  title="A Palavra Passe Não é Forte" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,12}$" />
                                </div>
                                <div class="form-group">
                                    <label><i class="zmdi zmdi-lock-outline"></i></label>
                                    <input type="password" name="re_pass" id="re_pass" placeholder="Repeat your password" runat="server" required="required"/>
                                    <asp:Label ID="lblmensagem" runat="server" ForeColor="Red" Visible="false" Text="As Palavras Passe tem que ser Iguais"></asp:Label>
                                </div>
                                <div class="form-group">
                                    <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" required="required"/>
                                    <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                                </div>
                                <div class="form-group form-button">
                                    <asp:Button ID="btn_signup" runat="server" Text="continue" class="form-submit" value="Continue" OnClick="btn_signup_Click" type="submit" />
                                </div>
                            </div>
                        </div>
                        <div class="signup-image">
                            <figure>
                                <img src="images/signup-image.jpg" alt="sing up image" />
                            </figure>
                            <a href="#" class="signup-image-link">I am already member</a>
                        </div>
                    </div>
                </div>
            </section>

        </div>
    </form>
    <script>
        function myFunction() {
            if (document.getElementById("tb_email").style.color == "red") {
                document.getElementById("tb_email").value = "";
                document.getElementById("tb_email").style.color = "black";
            }
            else if (document.getElementById("tb_username").style.color == "red") {
                document.getElementById("tb_username").value = "";
                document.getElementById("tb_username").style.color = "black";
            }
        }
    </script>
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
