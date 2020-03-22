app.controller('homeController', ['$scope', '$document', function ($scope, $document) {

    componentHandler.upgradeAllRegistered();


    $scope.jobOffers = [];

    $scope.jobOffers.push({ icon: 'domain', title : 'Regale einräumen', employer: 'Rewe', donation: '20,0'});
    $scope.jobOffers.push({ icon: 'person', title : 'Einkäufe erledigen', employer: 'Oma Hilde', donation: '0,00'});
    $scope.jobOffers.push({ icon: 'domain', title : 'Klopapierkäufer kontrollieren', employer: 'Aldi', donation: '10,00'});


    $scope.jobSelected = function() {
        console.log("geht");
        var popup = document.getElementById("myPopup");
        console.log(popup);
        popup.classList.toggle("show");
      }

}]);