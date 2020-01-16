window.draw_graph = function(){
  var ctx, myChart;
  ctx = document.getElementById("myChart").getContext('2d');

  return myChart = new Chart(ctx, {
    type: 'line',
    data: {
      datasets: [{
        label: "",
        border: "red",
        data: []
      }, {
        label: "",
        data: []
      }]
    },
    options: {
      scales: {
        height: 400,
        xAxes: [{
          type: 'realtime'
        }],
        yAxes: [{
          ticks: {
            beginAtZero: true,
            min: 0,
            max: 100
          }
        }]
      },
      plugins: {
        streaming: {
          duration: 20000,
          refresh: 1000,
          delay: 1000,
          frameRate: 30,
          pause: false,

          onRefresh: function(chart) {
            chart.data.datasets[0].data.push({
              x: Date.now(),
              y: get_data()
            });
          }
        }
      }
    }
  })
}

let a = 0;
function get_data() {
  $.ajax({
    url: '/',
  })
}