'use strict'

describe 'Service: TaskFactory', ->

  # load the service's module
  beforeEach module 'ngsampleApp'

  # instantiate service
  TaskFactory = {}
  beforeEach inject (_TaskFactory_) ->
    TaskFactory = _TaskFactory_

  it 'should do something', ->
    expect(!!TaskFactory).toBe true
