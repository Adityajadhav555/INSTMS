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
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>sports</title>
  </head>
  <body>
  <?php require 'partials/_nav.php' ?>
    
	<table class="table table-striped">
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Age</th>
        <th>Veg/NonVeg</th>
        <th>Role in Team</th>
                
			</tr>
		</thead>
		<tbody>

    
   
			<?php     
				include 'partials/_dbconnect.php';
        
        $name = $_SESSION['username'];
        $sport = $_GET['sport'];
				$team = $_GET['team'];
        $_SESSION['sport'] = $sport;
        $_SESSION['team'] = $team;
				echo"Showing Results for players of $name of $sport from team $team :";
        
				// Query the database
      
				$sql = "SELECT * FROM `players` where `nit_name`='$name' AND `sport`= '$sport' AND `team_name`= '$team'" ;
				$result = mysqli_query($conn, $sql);

				// Loop through the results and output the data in the table
				if (mysqli_num_rows($result) > 0 ) {
           
				    while($row = mysqli_fetch_assoc($result)) {
              
  			        echo "<tr>
                          <td>" . $row["serial"] . "</td>
                          <td>" . $row["Name"] . "</td>
                          <td>" . $row["age"] . "</td>
                          <td>" . $row["food"] . "</td>
                          <td>" . $row["role"] . "</td>
                       </tr>";
				    
          }
				} else {
				    echo "0 results";
				}

				// Close the connection
				mysqli_close($conn);
			?>
    
    
		</tbody>
	</table>

  <button type="button" class="btn btn-primary btn-lg" 
  onclick= "window.location.href = '/INSTMS/loginsystem/add_player.php'">Add New Player </button>
    

</body>


      

   <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    
  </body>
</html>