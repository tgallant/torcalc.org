'use strict'

###*
 # @ngdoc function
 # @name torCalcApp.controller:ResourcesCtrl
 # @description
 # # ResourcesCtrl
 # Controller of the torCalcApp
###
angular.module('torCalcApp')
  .controller 'ResourcesCtrl', ($scope, $location) ->
    $scope.goBack = () ->
      $location.path('/')
