"use strict"

module.exports = ->
  isSuccess = (status) ->
    if status.toString()[0] == "2"
      true
    else
      false

  return {
    isSuccess: isSuccess
  }
