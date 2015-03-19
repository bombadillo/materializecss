"use strict"

require "../services/fileChecker"
require "../services/httpValidator"

module.exports = ($rootScope, $location, fileChecker, httpValidator) ->

  path = ""

  methods =
    addCssToPage: (path) ->
      $rootScope._style = document.createElement "link"
      $rootScope._style.type = "text/css"
      $rootScope._style.href = "/public/assets/css/routes#{$location.path()}.css"
      $rootScope._style.rel = 'stylesheet';
      $rootScope._style = document.head.appendChild($rootScope._style)

    onPathExistsSuccess: (response, status) ->
      if httpValidator.isSuccess status
        methods.addCssToPage(path)

    onPathExistsFail: (response) ->
      console.log "Failed to get CSS"

  $rootScope.$on "$routeChangeStart", (event, next, current) ->
    path = "/public/assets/css/routes#{$location.path()}.css"
    fileChecker.exists path
      .success methods.onPathExistsSuccess
      .error methods.onPathExistsFail

  $rootScope.$on "$destroy", ->
    $rootScope._style.parentNode.removeChild.$scope._style
    dekete $rootScope._style
