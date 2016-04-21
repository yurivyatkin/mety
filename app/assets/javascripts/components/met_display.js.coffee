
class @MetDisplay extends React.Component

  parseDate = d3.time.format.utc("%Y-%m-%d %H:%M:%S").parse

  constructor: (props) ->
    super: props
    @state =
      startTime: '2014-02-10 05:00:00'
      stopTime: '2014-02-10 14:00:00'
      dataset:
        [
          {"datetime": '2014-02-10 05:00:00', "hx": 3.5, "tp": 13.1}
          {"datetime": '2014-02-10 06:00:00', "hx": 3.4, "tp": 13.0}
          {"datetime": '2014-02-10 07:00:00', "hx": 3.3, "tp": 13.0}
          {"datetime": '2014-02-10 08:00:00', "hx": 3.3, "tp": 13.0}
          {"datetime": '2014-02-10 09:00:00', "hx": 3.2, "tp": 12.9}
          {"datetime": '2014-02-10 10:00:00', "hx": 3.1, "tp": 12.9}
          {"datetime": '2014-02-10 11:00:00', "hx": 3.1, "tp": 12.8}
          {"datetime": '2014-02-10 12:00:00', "hx": 3.0, "tp": 12.8}
          {"datetime": '2014-02-10 13:00:00', "hx": 2.9, "tp": 12.7}
          {"datetime": '2014-02-10 14:00:00', "hx": 2.9, "tp": 12.6}
        ]

  render: ->

    myDataset = @state.dataset

    myDataset.forEach (d) ->
      d.datetime = parseDate(d.datetime)

    React.DOM.div
      className: 'header'
      React.DOM.h2
        className: 'title'

      React.createElement MetGraph,
        graphId: 1
        dataset: myDataset.map (d) ->
          datetime: d["datetime"]
          indicator: d["hx"]
        title: indicators["hx"]

      React.createElement MetGraph,
        graphId: 2
        dataset: myDataset.map (d) ->
          datetime: d["datetime"]
          indicator: d["tp"]
        title: indicators["tp"]
