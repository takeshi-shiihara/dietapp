window.draw_graph = function(){
  var ctx, myChart;
  ctx = document.getElementById("myChart").getContext('2d');

  myChart = new Chart(ctx, {
    type: 'line',
    data: {
      datasets: [{
        label: "",
        data: limeChartData
      }]
    },
    options: {
      scales: {
        xAxes: [],
        yAxes: [{
          ticks: {
            beginAtZero: true,
            min: 0,
            max: 100
          }
        }]
      }
    }
  })
}

function lineChartData() {
  $.ajax({
    url: '/',
    type:'GET',
    data: data,
    datatype: 'json'
  })

  .done(function(data){
  });
}