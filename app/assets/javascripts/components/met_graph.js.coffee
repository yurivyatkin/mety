class @MetGraph extends React.Component
  constructor: (props) ->
    super: props
    @state =
      dataset:
        [
          {"datetime": '2014-02-10 05:00:00', "lev": 13.1}
          {"datetime": '2014-02-10 06:00:00', "lev": 13.0}
          {"datetime": '2014-02-10 07:00:00', "lev": 13.0}
          {"datetime": '2014-02-10 08:00:00', "lev": 13.0}
          {"datetime": '2014-02-10 09:00:00', "lev": 12.9}
          {"datetime": '2014-02-10 10:00:00', "lev": 12.9}
          {"datetime": '2014-02-10 11:00:00', "lev": 12.8}
          {"datetime": '2014-02-10 12:00:00', "lev": 12.8}
          {"datetime": '2014-02-10 13:00:00', "lev": 12.7}
          {"datetime": '2014-02-10 14:00:00', "lev": 12.6}
        ]

  render: ->
    React.DOM.div
      className: 'panel panel-default'
      React.DOM.div
        className: 'panel-body'
        'Here will be a graph'
          React.DOM.svg
            width: '250'
            height: '250'
            React.DOM.g
              transform: 'translate(50, 20)'
              React.DOM.rect
                width: '100'
                height: '200'
                fill: 'blue'
