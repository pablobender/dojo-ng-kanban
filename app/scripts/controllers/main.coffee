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
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
