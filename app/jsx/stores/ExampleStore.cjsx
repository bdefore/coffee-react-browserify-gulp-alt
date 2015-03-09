Alt = require 'alt'

ExampleActions = require '../actions/ExampleActions'

class ExampleStore

  constructor: ->
    @foo = 'bar'
    # @bindActions(ExampleActions)
    console.log 'examplestore created'
    @bindAction(ExampleActions.mainLoaded, @onMainLoaded)

  onMainLoaded: (message) ->
    console.log "Store listener to action heard:", message
    @foo = 'baz'

module.exports = new Alt().createStore(ExampleStore, "ExampleStore")
