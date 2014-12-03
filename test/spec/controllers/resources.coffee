'use strict'

describe 'Controller: ResourcesCtrl', ->

  # load the controller's module
  beforeEach module 'torCalcApp'

  ResourcesCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ResourcesCtrl = $controller 'ResourcesCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
