React = require 'react'
ListenerMixin = require 'alt/mixins/ListenerMixin'
{Link, RouteHandler} = require('react-router')

ExampleStore = require '../stores/ExampleStore'
ExampleActions = require '../actions/ExampleActions'

Main = React.createClass
  mixins: [ListenerMixin]

  getInitialState: ->
    console.log 'getting initial state'
    ExampleStore.getState()

  componentDidMount: ->
    @listenTo ExampleStore, @onChange
    ExampleActions.mainLoaded 'Component has loaded'
    console.log 'fired when state', @state

  onChange: ->
    console.log 'heard change'
    @setState @getInitialState

  render: ->
    <div>
      <div>Main Component</div>
      <RouteHandler />
    </div>

module.exports = Main
