'use strict'

# Declare app level module which depends on filters, and services
App = angular.module('app', [
  'ngCookies'
  'ngResource'
  'app.controllers'
  'app.controllers.PreviewCtrl'

  'app.directives'
  'app.filters'
  'app.services'
])

App.config([
  '$routeProvider'
  '$locationProvider'

  ($routeProvider, $locationProvider, config) ->

    $routeProvider

      .when('/preview/:src', {templateUrl: '/partials/preview.html',
      controller: 'PreviewCtrl'})
      .when('/preview', {templateUrl: '/partials/preview.html',
      controller: 'PreviewCtrl'})

    # Catch all
      .otherwise({redirectTo: '/preview'})

    # Without server side support html5 must be disabled.
    $locationProvider.html5Mode off
])