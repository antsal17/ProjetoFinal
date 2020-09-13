<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testes2.aspx.cs" Inherits="ProjetoFinal.testes2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    

</head>
<body>
    <form id="form1" runat="server">

      <!-- Card -->
<div class="card map-card">

  <!--Google map-->
  <div id="map-container-google-1" class="z-depth-1-half map-container" style="height: 500px">
    <iframe src="https://maps.google.com/maps?q=manhatan&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0"
      style="border:0" allowfullscreen></iframe>
  </div>

  <!-- Card content -->
  <div class="card-body closed px-0">

    <div class="button px-2 mt-3">
      <a class="btn-floating btn-lg living-coral float-right"><i class="fas fa-bicycle"></i></a>
    </div>

    <div class="white px-4 pb-4 pt-3-5">

      <!-- Title -->
      <h5 class="card-title h5 living-coral-text">Central Park Zoo</h5>

      <div class="d-flex justify-content-between living-coral-text">
        <h6 class="card-subtitle font-weight-light">A place to relax</h6>
        <h6 class="font-small font-weight-light mt-n1">25 min</h6>
      </div>

      <hr>

      <div class="d-flex justify-content-between pt-2 mt-1 text-center text-uppercase living-coral-text">
        <div>
          <i class="fas fa-phone fa-lg mb-3"></i>
          <p class="mb-0">Call</p>
        </div>
        <div>
          <i class="fas fa-cat fa-lg mb-3"></i>
          <p class="mb-0">Love</p>
        </div>
        <div>
          <i class="far fa-grin-beam-sweat fa-lg mb-3"></i>
          <p class="mb-0">Smile</p>
        </div>
      </div>

      <hr>

      <table class="table table-borderless">
        <tbody>
          <tr>
            <th scope="row" class="px-0 pb-3 pt-2">
                <i class="fas fa-map-marker-alt living-coral-text"></i>
            </th>
            <td class="pb-3 pt-2">East 64th Street, New York, NY 10021, US</td>
          </tr>
          <tr class="mt-2">
            <th scope="row" class="px-0 pb-3 pt-2">
              <i class="far fa-clock living-coral-text"></i>
            </th>
            <td class="pb-3 pt-2"><span class="deep-purple-text mr-2"> Closed</span> Opens 10 AM</td>
          </tr>
          <tr class="mt-2">
            <th scope="row" class="px-0 pb-3 pt-2">
              <i class="fas fa-cloud-moon living-coral-text"></i>
            </th>
            <td class="pb-3 pt-2">Sunny weather tomorrow</td>
          </tr>
        </tbody>
      </table>

    </div>

  </div>

</div>
<!-- Card -->
    </form>
</body>
   
</html>
