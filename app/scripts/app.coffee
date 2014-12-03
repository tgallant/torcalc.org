'use strict'

###*
 # @ngdoc overview
 # @name torCalcApp
 # @description
 # # torCalcApp
 #
 # Main module of the application.
###
angular
  .module('torCalcApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize'
  ])
  .config ($routeProvider, $locationProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/resources',
        templateUrl: 'views/resources.html'
        controller: 'ResourcesCtrl'
      .otherwise
        redirectTo: '/'

    # enable html5Mode
    $locationProvider.html5Mode(true);
