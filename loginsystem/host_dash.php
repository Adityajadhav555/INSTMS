<?php
session_start();

if(!isset($_SESSION['loggedin']) || $_SESSION['loggedin']!=true){
    header("location: login.php");
    exit;
}

?>
<!doctype html>
<html lang="en">
  <style>
    body{
  background-image: url("images/bg1.jpg");
  background-size: cover;
  }
  </style>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Welcome - <?php $_SESSION['username']?></title>
  </head>
  <body>
  <?php require 'partials/_navhost.php' ?>
<<<<<<< Updated upstream
    
    <div class="container my-3">
    <div class="alert alert-success" role="alert">
      <h4 class="alert-heading">Welcome - <?php echo $_SESSION['username']?></h4>
      <p>Hey how are you doing? Welcome to iSecure. You are logged in as <?php echo $_SESSION['username']?>. Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content.</p>
      <hr>
      <p class="mb-0">Whenever you need to, be sure to logout <a href="/INSTMS/loginsystem/logout.php"> using this link.</a></p>
=======
  <container>
    <?php require 'partials/_footer.php' ?>
  </container>

  <div>
    <center>
    <h1>Host Dashboard</h1>

    <div>
    <br><br>
    <button type="button" class="btn btn-primary btn-lg"
    onclick= "window.location.href = '/INSTMS/loginsystem/declare_tour.php'">Declare Tournament</button>
    <br><br>
    <button type="button" class="btn btn-primary btn-lg"
    onclick= "window.location.href = '/INSTMS/loginsystem/reg_teams.php'">Validate Teams Registered for Tournament</button>
    <br><br>
    <button type="button" class="btn btn-primary btn-lg"
    onclick= "window.location.href = '/INSTMS/loginsystem/accomodate.php'">Food & Accomodation Management</button>
    <br><br>
    <button type="button" class="btn btn-primary btn-lg"
    onclick= "window.location.href = '/INSTMS/loginsystem/up_result.php'">Upload Results</button>
    <br><br>
    <button type="button" class="btn btn-primary btn-lg"
    onclick= "window.location.href = '/INSTMS/loginsystem/show_accom.php'">Food & Accomodation Allotment</button>
    <br><br>
    <button type="button" class="btn btn-primary btn-lg"
    onclick= "window.location.href = '/INSTMS/loginsystem/add_fixture.php'">Upload Fixture</button>
    <br><br>
    <button type="button" class="btn btn-primary btn-lg"
    onclick= "window.location.href = '/INSTMS/loginsystem/show_result.php'">View Results</button>
    <br><br>
    <button type="button" class="btn btn-primary btn-lg" onclick= "window.location.href = '/INSTMS/loginsystem/show_fixture.php'">Fixtures </button>
    <div class="pad"></div>
>>>>>>> Stashed changes
    </div>
  </div>
   <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>
