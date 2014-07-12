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
      $scope.columns[0].tasks.push TaskFactory.createTask taskName
      $scope.taskname = ""
    return