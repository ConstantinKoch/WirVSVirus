app.controller('homeController', ['$scope', '$interval', function ($scope, $interval) {

    componentHandler.upgradeAllRegistered();


    $scope.countDownTime = "";

    $scope.name = "";
    $scope.email_address = "";
    $scope.phone_number = 0;
    $scope.address = "";
    $scope.nachricht = "";


    // Set the date we're counting down to
    var countDownDate = new Date("Jun 14, 2020 13:30:00").getTime();

    $interval(function () {
        // Get today's date and time
        var now = new Date().getTime();

        // Find the distance between now and the count down date
        var distance = countDownDate - now;

        // Time calculations for days, hours, minutes and seconds
        var days = Math.floor(distance / (1000 * 60 * 60 * 24));
        var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));

        if (days < 10) {
            days = "0" + days;
        }
        if (hours < 10) {
            hours = "0" + hours;
        }
        if (minutes < 10) {
            minutes = "0" + minutes;
        }

        // Display the result in the element with id="demo"
        $scope.countdown = days + " : " + hours + " : " + minutes; 

        // If the count down is finished, write some text
        if (distance < 0) {
            clearInterval(x);
            $scope.countDownTime = "EXPIRED";
        }
    }, 1000);


}]);