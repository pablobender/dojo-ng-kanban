'use strict'

###*
 # @ngdoc overview
 # @name ngsampleApp
 # @description
 # # ngsampleApp
 #
 # Main module of the application.
###
angular
  .module('ngsampleApp', [
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize'
  ])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
      .otherwise
        redirectTo: '/'

