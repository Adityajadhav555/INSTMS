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

    <title>Teams</title>
  </head>
  <body>
  <?php require 'partials/_nav.php' ?>
    
	<table class="table table-striped">
		<thead>
			<tr>
				<th>ID</th>
				<th>Sport</th>
				<th>Team Name</th>
				<th>Players</th>
			</tr>
		</thead>
		<tbody>
			<?php
				include 'partials/_dbconnect.php';

				// Query the database
				$name = $_SESSION['username'];
				$sql = "SELECT * FROM `teams` where `nit_name` = '$name'";
				
				$result = mysqli_query($conn, $sql);

				// Loop through the results and output the data in the table
				if (mysqli_num_rows($result) > 0 ) {
				    while($row = mysqli_fetch_assoc($result)) {
						
						  
				        echo "<tr>
						  <td>" . $row["serial"] . "</td>
                          <td>" . $row["sport"] . "</td>
                          <td>" . $row["team_name"] . "</td> 	 
						  <td> <a href= '/INSTMS/loginsystem/player.php?sport =".$row["sport"]." & team =".$row["team_name"]."' > Manage Players </a> </td> 
                       </tr>";
					   //here in this section the issue is there, we have used link to transfer varibles from
					   //webpage team to webpage players, but ther is something which i am missing so it is causign a issue.
					   //please try to rectify
					   //contd reading player.php line no. 48
          }
				} else {
				    echo "0 results";
				}

				// Close the connection
				mysqli_close($conn);
			?>
		</tbody>
	</table>

  <button type="button" class="btn btn-primary btn-lg" onclick= "window.location.href = '/INSTMS/loginsystem/add_team.php'">Add New Team </button>
    

</body>


      

   <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>