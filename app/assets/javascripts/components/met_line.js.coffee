class @MetLine extends React.Component
  render: ->
    line = d3.svg.line()
      .x( (d) => @props.xScale(d.datetime) )
      .y( (d) => @props.yScale(d.indicator) )

    React.DOM.path
      className: 'line'
      d: line(@props.dataset)
