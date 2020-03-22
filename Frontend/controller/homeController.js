app.controller('homeController', ['$scope', '$document', function ($scope, $document) {

    componentHandler.upgradeAllRegistered();


    $scope.jobOffers = [];

    $scope.jobOffers.push({ icon: 'person', title : 'Mit dem Hund Gassi gehen', employer: 'Robert', donation: '5,00'});
    $scope.jobOffers.push({ icon: 'person', title : 'Einkäufe erledigen', employer: 'Oma Hilde', donation: '0,00'});
    $scope.jobOffers.push({ icon: 'person', title : 'Tierfutter einkaufen', employer: 'Opa Gerhard', donation: '7,00'});
    $scope.jobOffers.push({ icon: 'person', title : 'Katze zum Tierarzt bringen', employer: 'Simon', donation: '11,00'});
    $scope.jobOffers.push({ icon: 'person', title : 'Erntehilfe', employer: 'Landwirt Hans', donation: '25,00'});
    $scope.jobOffers.push({ icon: 'person', title : 'Hilfe im Stall', employer: 'Bauer Markus', donation: '15,00'});

    // Set bounderies of germany
    var corner1 = L.latLng(55.500,4.800);
    var corner2 = L.latLng(46.700,15.500);
    var bounds = L.latLngBounds(corner1, corner2);
    // Create Map
    var mymap = L.map('mapid').setView([51.000, 10.000], 6).setMaxBounds(bounds);
    
    // Set tileLayer of mapbox
    L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}', {
        attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
        maxZoom: 16,
        minZoom: 6,
        id: 'leafmapuch/ck6ho3k7o0rl41iqx5j0airrl',
        accessToken: 'pk.eyJ1IjoibGVhZm1hcHVjaCIsImEiOiJjazV3dzgwZGQwczU0M2dwb3pkdDduczl5In0.I4oSNyaCbq-ui0S42zk9hQ'
    }).addTo(mymap);
    

    // Set marker where help is needed
    var markerJob1 = L.marker([51.481,7.199]).addTo(mymap);
    markerJob1.bindPopup('<p>Mit dem Hund Gassi gehen</p>').openPopup();
    var markerJob2 = L.marker([48.801,9.272]).addTo(mymap);
    markerJob2.bindPopup('<p>Einkäufe erledigen</p>');
    var markerJob3 = L.marker([48.341,10.893]).addTo(mymap);
    markerJob3.bindPopup('<p>Tierfutter einkaufen</p>');
    var markerJob3 = L.marker([51.337,10.994]).addTo(mymap);
    markerJob3.bindPopup('<p>Katze zum Tierarzt bringen</p>');
    var markerJob3 = L.marker([50.537,12.994]).addTo(mymap);
    markerJob3.bindPopup('<p>Erntehilfe</p>');
    var markerJob3 = L.marker([49.337,11.994]).addTo(mymap);
    markerJob3.bindPopup('<p>Hilfe im Stall</p>');

}]);