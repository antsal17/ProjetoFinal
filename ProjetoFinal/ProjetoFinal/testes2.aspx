<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testes2.aspx.cs" Inherits="ProjetoFinal.testes2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
  <title>OpenWeatherMap Api</title>
  
    <style>
        *{
  margin:0;
  padding: 0;
  box-sizing: border-box;
}

body{
  font-family: "Nunito",sans-serif;
  background: #f8f8f8;
}

.input{
  text-align: center;
  margin: 100px auto;
}

input[type="submit"]{
  padding: 15px 30px;
  background: #e7e7e7;
  border: none;
  border-radius: 1px;
  font-family: "Nunito",sans-serif;
  font-weight:bold;
  font-size: 20px;
}

.input input[type="text"]{
  width: 600px;
  height: 55px;
  padding: 5px 10px;
  background: #e7e7e7;
  border: none;
  border-radius: 1px;
  font-family: "Nunito",sans-serif;
  font-weight:bold;
  font-size: 20px;
}

.card{
  width: 50%;
  background: #e7e7e7;
  height: 40vh;
  margin: 50px auto;
  border-radius: 2px;
}


.close{
  float: right;
  margin-top: -2px;
  cursor: pointer;
  margin-right: 20px;
}

.card h1{
  padding: 5px 0;
  text-align: center;
}

.card p{
  text-align: center;
  margin:40px 0;
  font-size:20px;
}
    </style>
    <script src="app.js"></script>   
</head>
<body>
    <form id="form1" runat="server">
    <div class="input">
      <input type="text" placeholder="Enter the city" class="input_text"/>
      <input type="submit" value="Submit" class="submit" onclick="dalhe()"/>
    </div>


  <div class="container">
    <div class="card">
      <h1 class="name" id="name"></h1>
      <p class="temp"></p>
      <p class="clouds"></p>
      <p class="desc"></p>
    </div>
  </div>
     
    </form>
    
</body>

</html>
