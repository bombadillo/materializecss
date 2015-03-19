"use strict"

module.exports = ($routeProvider) ->
  $routeProvider
    .when "/",
      controller: require "./controllers/welcome"
      templateUrl: "public/js/templates/welcome.html"
    .when "/route",
      controller: require "./controllers/route"
      templateUrl: "public/js/templates/route.html"
    .otherwise redirectTo: "/"
