class @MetDisplay extends React.Component
  constructor: (props) ->
    super: props
    @state =
      startTime: '2014-02-10 05:00:00'
      stopTime: '2014-02-10 14:00:00'
      graphs: []

  render: ->
    React.DOM.div
      className: 'header'
      React.DOM.h2
        className: 'title'
        'Meteorological Information'
      React.createElement MetGraph, startTime: @state.startTime, stopTime: @state.stopTime
      React.createElement MetGraph
