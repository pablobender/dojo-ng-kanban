'use strict'
###*
 # @ngdoc function
 # @name ngsampleApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the ngsampleApp
###
angular.module('ngsampleApp')
  .controller 'MainCtrl', ($scope, ColumnFactory, TaskFactory) ->

    $scope.columns = [] 
    $scope.columns.push ColumnFactory.createColumn "ToDo"
    $scope.columns.push ColumnFactory.createColumn "Doing"
    $scope.columns.push ColumnFactory.createColumn "Done"

    $scope.getColumns = ->
      $scope.columns

    $scope.getTasks = ->
      tasks = []
      for column in $scope.columns
        tasks = tasks.concat column.tasks
      tasks

    $scope.addTask = (taskName) ->
      return unless taskName
      task = TaskFactory.createTask taskName
      $scope.columns[0].tasks.push task
      $scope.taskname = ""
      task

    $scope.move = (task, targetColumn) ->
      for column in $scope.columns
        _.remove column.tasks, (t)->
          t == task

      targetColumn.tasks.push task

    return