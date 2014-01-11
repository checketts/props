'use strict';

var Props = {};

var App = angular.module('Props', ['Props.filters', 'Props.services', 'Props.directives']);

// Declare app level module which depends on filters, and services
App.config(['$routeProvider', function ($routeProvider) {
    $routeProvider.when('/cars', {
        templateUrl: 'resources/html/cars/layout.jsp',
        controller: CarController
    });

    $routeProvider.when('/trains', {
        templateUrl: 'resources/html/trains/layout.html',
        controller: TrainController
    });
    
    $routeProvider.when('/railwaystations', {
        templateUrl: 'resources/html/railwaystations/layout.html',
        controller: RailwayStationController
    });

    $routeProvider.otherwise({redirectTo: '/cars'});
}]);
