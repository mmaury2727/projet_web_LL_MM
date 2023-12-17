<?php
header("Content-Type: application/json");
header('Access-Control-Allow-Origin: *');
ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);
// Database credentials
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "hendektracker";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch data from the users table
if ($_GET["req"] == "hendeks"){
    $sql = "
    SELECT
       hnouches.id AS hnouches_id, hnouches.station AS hnouches_station, hnouches.author AS hnouches_author,
       users.name AS author,
       stations.name AS station,
       stations.latitude AS lat,
       stations.longitude AS lng
    FROM hnouches 
    INNER JOIN users ON hnouches.author = users.id
    INNER JOIN stations ON hnouches.station = stations.id;
    ";
} else {
    $sql = "SELECT * FROM stations";
}
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Output data of each row
    $data = array();
    while($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
    echo json_encode($data); // Return data as JSON
} else {
    echo "0 results";
}
$conn->close();
?>