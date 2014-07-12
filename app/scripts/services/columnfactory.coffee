'use strict'

###*
 # @ngdoc service
 # @name ngsampleApp.ColumnFactory
 # @description
 # # ColumnFactory
 # Factory in the ngsampleApp.
###
class Column
  constructor: (@title)->
    @tasks = []

angular.module('ngsampleApp')
  .factory 'ColumnFactory', ->
    {
      createColumn: (title) ->
        new Column(title)
    }
