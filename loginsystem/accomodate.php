
<?php

session_start();

if(!isset($_SESSION['loggedin']) || $_SESSION['loggedin']!=true){
    header("location: login.php");
    exit;
}
$showAlert = false;
$showError = false;
if($_SERVER["REQUEST_METHOD"] == "POST")
{
    include 'partials/_dbconnect.php';
    $date = $_POST["date"];
    $accom= $_POST["accom"];
    $food = $_POST["food"];
    $nit= $_POST["nit"];
    $sql = "INSERT INTO `food_accom` ( `date`, `nit_name`,`accom`,`food`) VALUES ('$date','$nit','$accom','$food')";
    $result = mysqli_query($conn, $sql);
        if ($result){
            $showAlert = true;
        }
    }
    


?>


<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Declare Tournament</title>
  </head>
  <body>
    <?php require 'partials/_navhost.php' ?>
    <?php
    if($showAlert){
    echo ' <div class="alert alert-success alert-dismissible fade show" role="alert">
        <strong>Success!</strong> The tournament is now Live
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">×</span>
        </button>
    </div> ';
    }
    if($showError){
    echo ' <div class="alert alert-danger alert-dismissible fade show" role="alert">
        <strong>Some Error occured with query</strong> '. $showError.'
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">×</span>
        </button>
    </div> ';
    }
    ?>


    <div class="container my-4">
     <h1 class="text-center">Food And Accomdation Management</h1>
     <form action="accomodate.php" method="post">
     <div class="form-group">
        <label for="date">Enter the date of Reporting</label>
         <input type="date" id="date" name="date" class="form-control">
     </div>

     <div class="form-group">
            <label for="nit">Enter Name of NIT</label>
            <input type="text" class="form-control" id="nit" name="nit">
    </div>

       <div class="form-group">
         <label for="text">Enter the details of Accomdation</label>
         <textarea class="form-control" id="accom" name="accom" rows="3"></textarea>
      </div>

      <div class="form-group">
         <label for="text">Enter the details of Food Management</label>
         <textarea class="form-control" id="food" name="food" rows="2"></textarea>
      </div>
         
        <button type="submit" class="btn btn-primary">SUBMIT</button>
     </form>
     </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>