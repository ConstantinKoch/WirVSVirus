app.controller('navbarController', ['$scope', '$location', function ($scope, $location) {
    
    // Track which template/page is active
    $scope.isActive = function (viewLocation) {
        return viewLocation === $location.path();
    };
}]);