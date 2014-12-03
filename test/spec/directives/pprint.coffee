'use strict'

describe 'Directive: pprint', ->

  # load the directive's module
  beforeEach module 'torCalcApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<pprint></pprint>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the pprint directive'
