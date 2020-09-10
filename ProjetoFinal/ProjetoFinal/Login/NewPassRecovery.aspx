<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewPassRecovery.aspx.cs" Inherits="ProjetoFinal.Login.NewPassRecovery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Pass Word Recovery</title>

    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css" />
     <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- Bootstrap -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        function openModal() {
            $('#myModal').modal('show');
        }

    </script>

    <link rel="stylesheet" href="css/style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <div>
                <div class="main">

                    <section class="sign-in">
                        <div class="container">
                            <div class="signin-content">
                                <div class="signin-image">
                                    <figure>
                                        <img src="images/signin-image.jpg" alt="sing up image" />
                                    </figure>
                                    <a href="singUp.aspx" class="signup-image-link">Create an account</a>
                                </div>

                                <div class="signin-form">
                                    <h2 class="form-title">Pass Recovery</h2>
                                    <div method="POST" class="register-form" id="login-form">

                                        <div class="form-group">
                                            <label for="pass"><i class="zmdi zmdi-lock"></i></label>

                                            <input type="password" name="pass" id="pass" placeholder="Password" runat="server" required="required" title="A Palavra Passe Não é Forte" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,12}$" />
                                        </div>
                                        <div class="form-group">
                                            <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                            <input type="password" name="re_pass" id="re_pass" placeholder="Repeat your password" runat="server" required="required" />
                                            <asp:Label ID="lblmensagem" runat="server" ForeColor="Red" Visible="false" Text="As Palavras Passe tem que ser Iguais"></asp:Label>
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



<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <h2>A Sua Palavra Passe Foi Alterada Com Sucesso</h2>
      </div>
      <div class="modal-footer">
        
        <button type="button" class="btn btn-primary" onclick="Redirect()">OK</button>
      </div>
    </div>
  </div>
</div>

    </form>
    <script type="text/javascript">

       



        function Redirect() {
            window.location.href = "Login.aspx";
        }

    </script>
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>
