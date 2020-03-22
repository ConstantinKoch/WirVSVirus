var app = angular.module("wirvsvirusHelperApp", ["ngRoute"]);

// Routing between templates for single page application
app.config(function($routeProvider) {
  $routeProvider
    .when("/home", {
      templateUrl: "../templates/home.html",
      controller: "homeController"
    })
    .when("/map", {
      templateUrl: "../templates/registration.html",
      controller: "registrationController"
    })
    .otherwise({
      redirectTo: "/home"
    });
});
