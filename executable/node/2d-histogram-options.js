var plotly = require('plotly')('test-runner', '9h29fe3l0x')

var x = Math.random() * 50
var y = Math.random() * 50 + 1

var data = [
  {
    x: x, 
    y: y, 
    scl: [["0", "rgb(12,51,131)"], ["0.25", "rgb(10,136,186)"], ["0.5", "rgb(242,211,56)"], ["0.75", "rgb(242,143,56)"], ["1", "rgb(217,30,30)"]], 
    autobinx: false, 
    autobiny: false, 
    xbins: {
      start: -3, 
      end: 3, 
      size: 0.1
    }, 
    ybins: {
      start: -2.5, 
      end: 4, 
      size: 0.1
    }, 
    histnorm: "probability", 
    type: "histogram2d"
  }
];

var graph_options = {filename: "2d-histogram-options", fileopt: "overwrite"}
plotly.plot(data, graph_options, function (err, msg) {
    console.log(msg);
});