Alt = require '../alt'

class ExampleActions
  constructor: ->
    @generateActions 'mainLoaded'

module.exports = Alt.createActions(ExampleActions)
