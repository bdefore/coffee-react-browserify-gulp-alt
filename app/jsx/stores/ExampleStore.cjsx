Alt = require '../alt'

ExampleActions = require '../actions/ExampleActions'

class ExampleStore

  constructor: ->
    @bindActions(ExampleActions)

  onMainLoaded: (message) ->
    @foo = message

module.exports = Alt.createStore(ExampleStore, "ExampleStore")
