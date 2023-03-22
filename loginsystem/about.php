<?php
session_start();

if(!isset($_SESSION['loggedin']) || $_SESSION['loggedin']!=true){
    header("location: login.php");
    exit;
}

?>

<!doctype html>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
  </head>
  <body>
  <?php require 'partials/_navabout.php' ?>
  <div class="card" >
  <div class="card-body">
    <h3 class="card-title text-center">Project Team</h3>
    <h5 class="card-subtitle text-center">This project is made possible by<h5>
    <br>
    <h6>
    <ul class="list-group list-group-flush text-center">
        <li class="list-group-item">Aditya Nivrutti Jadhav</li>
        <li class="list-group-item">Akshay Kumar</li>
        <li class="list-group-item">Anish Kumar Yadav</li>
        <li class="list-group-item">Arastu Sharma</li>
        <li class="list-group-item">Aravind A</li>
  </ul>
    </h6>
  </div>
</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
  </body>
</html>
