'use strict'

###*
 # @ngdoc function
 # @name ngsampleApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the ngsampleApp
###
angular.module('ngsampleApp')
  .controller 'MainCtrl', ($scope) ->
    $scope.getTasks = ->
      tasks = []
      tasks = tasks.concat column for column in $scope.columns
      tasks

    $scope.columns = [[],[],[]]
    $scope.addTask = (task) ->
      return unless task
      $scope.columns[0].push task
      $scope.taskname = ""
