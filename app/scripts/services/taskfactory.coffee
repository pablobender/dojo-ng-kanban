'use strict'

###*
 # @ngdoc service
 # @name ngsampleApp.TaskFactory
 # @description
 # # TaskFactory
 # Factory in the ngsampleApp.
###

class Task
  constructor: (@name)->

angular.module('ngsampleApp')
  .factory 'TaskFactory', ->
    {
      createTask: (name) ->
        new Task(name)
    }