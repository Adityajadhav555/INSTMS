<?php 
if(isset($_SESSION['loggedin']) && $_SESSION['loggedin']==true){
  $loggedin= true;
}
else{
  $loggedin = false;
}
echo '<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" >Welcome Host</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        
      </li>';

      if(!$loggedin){
      echo '<li class="nav-item">
        <a class="nav-link" href="/INSTMS/loginsystem/login.php">Login</a>
      </li>
    
      <li class="nav-item">
        <a class="nav-link" href="/INSTMS/loginsystem/signup.php">Signup</a>
      </li>';
      }
      if($loggedin){
        echo '<li class="nav-item">
        <a class="nav-link" href="/INSTMS/loginsystem/host_dash.php">Home</a>
      </li>
    
      <li class="nav-item">
        <a class="nav-link" href="/INSTMS/loginsystem/logout.php">Logout</a>
      </li>';
    }
       
      
    echo '</ul>
   
    
  </div>
</nav>';
?>