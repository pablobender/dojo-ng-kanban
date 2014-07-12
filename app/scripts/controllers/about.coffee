'use strict'

###*
 # @ngdoc function
 # @name ngsampleApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the ngsampleApp
###
angular.module('ngsampleApp')
  .controller 'AboutCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
