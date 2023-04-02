<?php
$server = "localhost";
$username = "id20496829_instmsnitc";
$password = "wT]pjA4ROQaY32*k";
$database = "id20496829_instms";

$conn = mysqli_connect($server, $username, $password, $database);
if (!$conn){
//     echo "success";
// }
// else{
    die("Error". mysqli_connect_error());
}

?>
