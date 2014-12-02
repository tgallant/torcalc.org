'use strict'

###*
 # @ngdoc function
 # @name torCalcApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the torCalcApp
###
angular.module('torCalcApp')
  .controller 'MainCtrl', ($scope, $location) ->


    # function for performing bandwidth calculation
    $scope.search = (url=true) ->

      relayRate = Math.round(((parseInt($scope.bw) * 1000000) / 2628000) / 2)
      relayBurst = Math.round(relayRate + relayRate * .75)

      $scope.result =
        'bw' : $scope.bw,
        'acctMax' : $scope.bw + ' GB',
        'acctStart': 'month 1 00:00',
        'relayRate': relayRate + ' KBytes',
        'relayBurst': relayBurst + ' KBytes'

      if url == true
        urlPath = '/?bw='+$scope.bw
        history.pushState(null, "", urlPath)


    # function for displaying the generated torrc file
    $scope.typeToggle = (type, url=true) ->
      
      if type == 'relay'
        $scope.relay = true
        $scope.exit = false

      if type == 'exit'
        $scope.relay = false
        $scope.exit = true

      if url == true
        urlPath = '/?bw=' + $scope.bw + '&type=' + type
        history.pushState(null, "", urlPath)


    # logic for query string variables onload
    if $location.search().bw
      $scope.bw = $location.search().bw
      $scope.search(url=false)

    if $location.search().type and $location.search().bw
      $scope.typeToggle($location.search().type, url=false)

  .directive 'selectOnClick', ($window) ->
    return { 
      link: (scope, element) ->
        element.on 'click', ->
          selection = $window.getSelection()        
          range = document.createRange()
          range.selectNodeContents(element[0])
          selection.removeAllRanges()
          selection.addRange(range)
    }
