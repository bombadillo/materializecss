"use strict"

require "angular"
require "angular-route/angular-route"


routeCssLoader = require "./functions/routeCssLoader"
onLoadOperations = require "./functions/onLoadOperations"
fileChecker = require "./services/fileChecker"
httpValidator = require "./services/httpValidator"
window.$ = window.jQuery = require "jquery"
require "bootstrap"

app = angular.module("myApp", ["ngRoute"])

app.config require "./routes"

app.run routeCssLoader
app.run onLoadOperations

app.factory("fileChecker", fileChecker)
app.factory("httpValidator", httpValidator)
