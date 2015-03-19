"use strict"

characters = require "../models/characters"
functions = require "../functions/sales"

animal = new characters.Animal
functions.performSales animal

WelcomeCtrl = ($scope) ->
  $scope.testVar = "Yes!"

module.exports = WelcomeCtrl;
