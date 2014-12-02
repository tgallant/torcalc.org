'use strict'

###*
 # @ngdoc function
 # @name torCalcApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the torCalcApp
###
angular.module('torCalcApp')
  .controller 'AboutCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
