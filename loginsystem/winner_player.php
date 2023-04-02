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
    <script src="table2excel.js"></script>

    <title>sports</title>
  </head>
  <body>
  <?php require 'partials/_nav.php' ?>
  <?php require 'partials/_footer.php' ?>

	<table id="player" class="table table-striped">
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>NIT Name</th>
				<th>Team Name</th>
                <th>Sport</th>
                

			</tr>
		</thead>
		<tbody>



			<?php
				include 'partials/_dbconnect.php';

        $name = $_GET['nit'];
        $sport = $_GET['sport'];
		$team = $_GET['team'];
        //After CHANGE 1 and 2, the variables are now being parsed correctly.
        
				//echo"Showing Results for players of $name of $sport from team $team :";
                echo"<div class='alert alert-success' role='alert'>
        Showing Results for players of $name of $sport from team $team :
        </div>";
				// Query the database

				$sql = "SELECT * FROM `players` where `nit_name`='$name' AND `sport`= '$sport' AND `team_name`= '$team'" ;
				$result = mysqli_query($conn, $sql);

				// Loop through the results and output the data in the table
				if (mysqli_num_rows($result) > 0 ) {

				    while($row = mysqli_fetch_assoc($result)) {

  			        echo "<tr>
                          <td>" . $row["serial"] . "</td>
                          <td>" . $row["Name"] . "</td>
                          <td>" . $row["nit_name"] . "</td>
                          <td>" . $row["team_name"] . "</td>
                          <td>" . $row["sport"] . "</td>
                          
                       </tr>";

          }
				} else {
          echo "<div class='alert alert-warning' role='alert'>
					No Teams made so far
				  </div>";
				}

				// Close the connection
				mysqli_close($conn);
			?>


		</tbody>
	</table>

  <button type="button" onclick="htmlToCsv('player.csv')" class="btn btn-primary btn-lg">Export to CSV </button>


  <div class="pad"></div>
</body>




   <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <!--
    <script>
      document.getElementById("downloadexcel").addEventListener('click',function() {
        var table2excel = new Table2Excel();
        table2excel.export(document.querySelectorAll("#player"));
        });
    </script>
    -->
    
    <script>
        function htmlToCsv(filename){

          var data=[];
          var rows = document.querySelectorAll("table tr");
          for(var i=0; i<rows.length;i++){
            var row = [], cols = rows[i].querySelectorAll("td, th");

            for(var j=0;j<cols.length; j++){
              row.push(cols[j].innerText);
            }
            data.push(row.join(","));
          }
          downloadCsvFile(data.join("\n"), filename);

        }

        function downloadCsvFile(csv, filename){
          var csvFile, downloadLink;
          csvFile = new Blob([csv],{type: "text/csv"});
          downloadLink = document.createElement("a");
          downloadLink.download = filename;
          downloadLink.href = window.URL.createObjectURL(csvFile);
          downloadLink.style.display="none";
          document.body.appendChild(downloadLink);
          downloadLink.click();
        }

    </script>
  </body>
</html>
