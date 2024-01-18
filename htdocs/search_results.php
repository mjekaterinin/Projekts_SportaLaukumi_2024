<!DOCTYPE html>
<html>
<head>
    <title>Search Results</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        a {
            text-decoration: none;
            color: blue;
        }
    </style>
</head>
<body>

<?php
include("config/db.php");
// Get search keyword from the form
$keyword = isset($_GET['needle']) ? $_GET['needle'] : '';


$sql = "SELECT * FROM sporta_laukums WHERE sp_nosaukums LIKE '%$keyword%'";
$result = $conn->query($sql);

if ($result === false) {
    die("Error executing query: " . $conn->error);
}


if ($result->num_rows > 0) {
    echo "<table>";
    echo "<tr><th>ID</th><th>Sporta Nosaukums</th><th>Latitude</th><th>Longitude</th><th>Info</th></tr>";

    while ($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $row["id_laukums"] . "</td>";
        echo "<td>" . $row["sp_nosaukums"] . "</td>";
        echo "<td>" . $row["latitude"] . "</td>";
        echo "<td>" . $row["longitude"] . "</td>";
        echo "<td><a href='apraksts.php?id_laukums=" . $row["id_laukums"] . "'>Info</a></td>";
        echo "</tr>";
    }

    echo "</table>";
} else {
    echo "No results found.";
}

$conn->close();
?>

</body>
</html>
