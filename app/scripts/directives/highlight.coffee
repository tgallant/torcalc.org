'use strict'

###*
 # @ngdoc directive
 # @name torCalcApp.directive:highlight
 # @description
 # # highlight
###
angular.module('torCalcApp')
  .directive('highlight', ($window) ->
    link: (scope, element) ->
      element.on 'click', ->
        selection = $window.getSelection()        
        range = document.createRange()
        range.selectNodeContents(element[0])
        selection.removeAllRanges()
        selection.addRange(range)
  )
