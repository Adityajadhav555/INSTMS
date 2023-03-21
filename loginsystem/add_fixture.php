
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
    $tournament = $_POST["tournament"];
    $link= $_POST["link"];

    $sql = "INSERT INTO `fixture` ( `tournament`, `fixture`) VALUES ('$tournament', '$link')";
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

    <title>Add Fixture</title>
  </head>
  <body>
    <?php require 'partials/_navhost.php' ?>
    <container>
    <?php require 'partials/_footer.php' ?>
    </container>
    <?php
    if($showAlert){
    echo ' <div class="alert alert-success alert-dismissible fade show" role="alert">
        <strong>Success!</strong> Fixture Uploaded !
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
     <h1 class="text-center">Add Fixture</h1>
     <form action="add_fixture.php" method="post">
     <div class="form-group">
        <label for="tournament">Enter Name of tournament</label>
         <input type="text" id="tournament" name="tournament" class="form-control">
     </div>
       <div class="form-group">
         <label for="link">Enter the link to Fixture</label>
         <textarea class="form-control" id="link" name="link" rows="3"></textarea>
      </div>

        <button type="submit" class="btn btn-primary">Submit</button>
     </form>
     </div>

     <center>
     <div>
        <h3>

                 <button type="button" class="btn btn-primary btn-lg"
                    onclick= "window.location.href = 'https://imgbox.com/'">Upload Image </button>

                 <button type="button" class="btn btn-primary btn-lg"
                 onclick= "window.location.href = 'https://pdfhost.io/'">Upload PDF </button>


        </h3>

    </div>
    <div class="pad"></div>
    </center>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>
