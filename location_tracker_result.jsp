<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Location Tracker Result</title>
    <link rel="stylesheet" href="https://unpkg.com/leaflet/dist/leaflet.css" />
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 20px;
            text-align: center;
        }
        #map {
            height: 500px;
            width: 100%;
            margin: 20px 0;
        }
        .go-back-btn {
            margin-top: 20px;
        }
        .go-back-btn a {
            padding: 10px 20px;
            font-size: 16px;
            color: #fff;
            background-color: #007BFF;
            border: none;
            border-radius: 4px;
            text-decoration: none;
            cursor: pointer;
        }
        .go-back-btn a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>Vehicle Location</h1>
    
    <!-- Display location data -->
    <p>Vehicle Number: ${vehiclenumber}</p>
    <p>Location: ${location}</p>
    
    <!-- Map container -->
    <div id="map"></div>
    
    <div class="go-back-btn">
        <a href="locationnotifier.jsp">Go Back</a>
    </div>
    
    <script src="https://unpkg.com/leaflet/dist/leaflet.js"></script>
    <script>
        function initMap() {
            // Extract the location from the server-side data
            var location = "${location}";
            
            // Default location in India (Central point)
            var defaultLocation = [20.5937, 78.9629];
            
            // Use default location if no location data is provided
            var coords = location ? location.split(',') : defaultLocation;
            var lat = parseFloat(coords[0]);
            var lng = parseFloat(coords[1]);
            
            // Create a map centered on the location
            var map = L.map('map').setView([lat, lng], 6); // Zoom level 6 for India
            
            // Add OpenStreetMap tile layer
            L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
            }).addTo(map);
            
            // Add a marker for the location
            L.marker([lat, lng]).addTo(map)
                .bindPopup('Vehicle Location')
                .openPopup();
        }
        
        // Initialize the map
        window.onload = initMap;
    </script>
</body>
</html>
