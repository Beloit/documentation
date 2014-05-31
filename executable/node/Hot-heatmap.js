var plotly = require('plotly')('test-runner', '9h29fe3l0x')

var unpack = require('ndarray-unpack');
var zeros = require('zeros');
var fill = require('ndarray-fill');

var size = 50;
var z = unpack(fill(zeros([size, size]), function(c,r) {
  return Math.sqrt((r*c)/(size*size));
}));

var data = [
  {
    z: z, 
    scl: "Hot", 
    type: "heatmap"
  }
];
var layout = {title: "Hot"};

plot_url = plolty.plot(data, layout, function (err, msg) {
    console.log(msg);
});