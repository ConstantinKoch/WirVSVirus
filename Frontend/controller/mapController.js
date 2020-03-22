app.controller('mapController', ['$scope', function ($scope) {
    
    componentHandler.upgradeAllRegistered();

    var corner1 = L.latLng(55.500,4.800);
    var corner2 = L.latLng(46.700,15.500);
    var bounds = L.latLngBounds(corner1, corner2);
    // Create Map
    var mymap = L.map('mapid').setView([51.000, 10.000], 6).setMaxBounds(bounds);
    
    L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}', {
        attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
        maxZoom: 16,
        minZoom: 6,
        id: 'leafmapuch/ck6ho3k7o0rl41iqx5j0airrl',
        accessToken: 'pk.eyJ1IjoibGVhZm1hcHVjaCIsImEiOiJjazV3dzgwZGQwczU0M2dwb3pkdDduczl5In0.I4oSNyaCbq-ui0S42zk9hQ'
    }).addTo(mymap);
    

    // Set marker where help is needed
    var markerJob1 = L.marker([51.481,7.199]).addTo(mymap);
    markerJob1.bindPopup('<p>Regale einräumen</p>').openPopup();
    var markerJob2 = L.marker([48.801,9.272]).addTo(mymap);
    markerJob2.bindPopup('<p>Einkäufe erledigen</p>');
    var markerJob3 = L.marker([48.341,10.893]).addTo(mymap);
    markerJob3.bindPopup('<p>Klopapierkäufer kontrollieren</p>');

}]);