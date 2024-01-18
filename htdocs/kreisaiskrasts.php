<?php
include("config/db.php");
?>
<!doctype html>
<html>
<head>
<title>Kreisais</title>
<meta name="description" content="Our first page">
<meta name="keywords" content="html tutorial template">
<link rel="stylesheet" href = "https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js">
<link rel="stylesheet" href = "https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
<link rel="stylesheet" href = "https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js">
<script defer src="https://code.jquery.com/jquery-3.7.0.js"></script>
<script defer src="script2.js"></script>
<script defer src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>
<script defer src="script.js"></script>
</head>
<body>
<table id="example" class="table table-striped" style="width:100%">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Rajons</th>
                    <th>Laukuma Nosaukums</th>
                </tr>
            </thead>
            <tbody>
                <?php
                include("config/db.php");
                $sql = "SELECT id_rajons, nosaukums_rajons, sp_nosaukums FROM rajons where id_rajons = " . $_GET['id'] . ";";

                // Execute the query.
                $result = $conn->query($sql);
                
                if ($result->num_rows > 0) {
                    // Loop through the result set and display data in the table.
                    while ($row = $result->fetch_assoc()) {
                        echo "<tr>";
                        echo "<td>" . $row["id_rajons"] . "</td>";
                        echo "<td>" . $row["nosaukums_rajons"] . "</td>";
                        echo "<td><a href='map.php" ."'>" . $row["sp_nosaukums"] . "</a></td>";
                        echo "</tr>";
                    }
                } else {
                    echo "<tr><td colspan='3'>Nav atrasti dati</td></tr>";
                }
                
                
                ?>
            </tbody>
        </table>
</body>
</html>