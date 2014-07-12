'use strict'

describe 'Service: ColumnFactory', ->

  # load the service's module
  beforeEach module 'ngsampleApp'

  # instantiate service
  ColumnFactory = {}
  beforeEach inject (_ColumnFactory_) ->
    ColumnFactory = _ColumnFactory_

  it 'should do something', ->
    expect(!!ColumnFactory).toBe true
