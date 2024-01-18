<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sporta Laukums Details</title>
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" />
    <style>
        #map {
            height: 400px;
            width: 85%;
            margin: 0 auto; 
            border: 5px solid orange; 
        }
        body {
            font-family: 'Arial', sans-serif;
        }
    </style>
</head>
<body>
    <div id="map"></div>

    <script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"></script>
    <script>
        // Function to initialize the map with markers
        function initMap() {
            const map = L.map('map').setView([56.9460, 24.0141], 12); // Set default view

            L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
            }).addTo(map);

            <?php
            include("config/db.php");

            // Fetch all coordinates from sporta_laukums
            $sql = "SELECT id_laukums, latitude, longitude, sp_nosaukums FROM sporta_laukums";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    $id_laukums = $row['id_laukums'];
                    $latitude = $row['latitude'];
                    $longitude = $row['longitude'];
                    $sp_nosaukums = $row['sp_nosaukums'];

                    // Output JavaScript to add markers to the map
                    echo 'L.marker([' . $latitude . ', ' . $longitude . ']).addTo(map)
                        .bindPopup(\'<b><a href="apraksts.php?id_laukums=' . $id_laukums . '">' . $sp_nosaukums . '</a></b><br>Coordinates: ' . $latitude . ', ' . $longitude . '\').openPopup();';
                }
            }

            $conn->close();
            ?>
        }
        
        // Call the function to initialize the map
        initMap();
    </script>
</body>
</html>
