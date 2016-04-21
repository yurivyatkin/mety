class @MetAxis extends React.Component

  # Prepare d3-computed stuff
  componentWillMount: () ->
    if @props.type == 'y'
      @axis = d3.svg.axis()
        .scale(@props.scale)
        .orient('left')
        .ticks(@props.numberOfTicks)

    if @props.type == 'x'
      @axis = d3.svg.axis()
        .scale(@props.scale)
        .orient('bottom')
        .ticks(@props.numberOfTicks)

  # Forcing React to (re)render
  # componentDidUpdate: () -> @renderAxis()

  componentDidMount: () -> @renderAxis()

  renderAxis: () ->
    node = ReactDOM.findDOMNode(this)
    console.log node
    d3.select(node).call(@axis)

  render: ->
    transform = ''
    if @props.type == 'x'
      transform = "translate(0,#{height - margin.top - margin.bottom})"
    React.DOM.g
      className: 'axis'
      transform: transform
