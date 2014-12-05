'use strict'

describe 'Directive: highlight', ->

  # load the directive's module
  beforeEach module 'torCalcApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<highlight></highlight>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the highlight directive'
