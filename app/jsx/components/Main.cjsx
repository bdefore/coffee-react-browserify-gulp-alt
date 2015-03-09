React = require 'react'
ListenerMixin = require 'alt/mixins/ListenerMixin'
{Link, RouteHandler} = require('react-router')

ExampleStore = require '../stores/ExampleStore'
ExampleActions = require '../actions/ExampleActions'

Main = React.createClass
  mixins: [ListenerMixin]

  getInitialState: ->
    ExampleStore.getState()

  componentDidMount: ->
    @listenTo ExampleStore, @onChange
    ExampleActions.mainLoaded 'Component has loaded'

  onChange: ->
    @setState @getInitialState()

  render: ->
    <div>
      <div>Main Component has state loaded from store with message: {@state.foo}</div>
      <RouteHandler />
    </div>

module.exports = Main
