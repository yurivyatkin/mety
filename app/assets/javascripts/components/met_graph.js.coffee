class @MetGraph extends React.Component
  constructor: (props) ->
    super: props
    @state =
      dataset: [13.1, 13.0, 13.0, 13.0, 12.9, 12.9, 12.8, 12.8, 12.7, 12.6]

  render: ->
    React.DOM.div
      className: 'panel panel-default'
      React.DOM.div
        className: 'panel-body'
        'Here will be a graph'
