"use strict"

module.exports = ($http) ->

  exists = (filePath) ->
    $http.get filePath

  return {
    exists: exists
  }
