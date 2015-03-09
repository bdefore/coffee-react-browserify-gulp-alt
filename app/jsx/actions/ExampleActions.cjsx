Alt = require 'alt'

class ExampleActions
  # constructor: ->
  #   @generateActions 'mainLoaded'

  mainLoaded: (message) ->
    console.log 'ExampleActions.mainLoaded', message
    @dispatch(message)
    console.log 'dispatched'

module.exports = new Alt().createActions(ExampleActions)
