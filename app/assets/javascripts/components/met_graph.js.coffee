class @MetGraph extends React.Component
  render: ->
    xDomain = d3.extent(@props.dataset.map((d) -> d.datetime ))
    xRange = [0, width - margin.left - margin.right]

    yDomain = d3.extent(@props.dataset.map((d) -> d.indicator ))
    yRange = [height - margin.top - margin.bottom, 0]

    xScale = d3.time.scale()
      .domain xDomain
      .range xRange

    yScale = d3.scale.linear()
      .domain yDomain
      .range yRange

    React.DOM.div
      className: 'panel panel-default'
      React.DOM.div
        className: 'panel-body'
        React.DOM.div
          className: "svg-container"
          React.DOM.svg
            id: "graph#{@props.graphId}"
            viewBox: "0 0 #{width} #{height}"
            transform: "translate(#{margin.left},#{margin.top})"
            React.createElement MetAxis,
              type: "x"
              scale: xScale
              numberOfTicks: 4
            React.createElement MetAxis,
              type: "y"
              scale: yScale
              numberOfTicks: 4
            React.createElement MetLine,
              title: "Name this indicator!"
              dataset: @props.dataset
              xScale: xScale
              yScale: yScale
        React.DOM.p {}, @props.title
