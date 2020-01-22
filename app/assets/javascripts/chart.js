// window.draw_graph = function() {
//   $.ajax({
//     url: '/',
//     type:'GET',
//     success: function(data) {
//       lineChartData = JSON.parse(data);

//       var ctx = document.getElementById("myChart").getContext('2d');

//       myChart = new Chart(ctx, {
//         type: 'line',
//         data: lineChartData
//       });
//     }
//   });
// }


window.draw_graph = function(){

  var ctx, myChart;
  ctx = document.getElementById("myChart").getContext('2d');

  myChart = new Chart(ctx, {
    type: 'line',
    data: {
      labels: [1,2,3,4,5],
      datasets: [{
        label: "",
        data: [50,55,52,53,55]
      }]
    },
    options: {
      scales: {
        xAxes: [],
        yAxes: [{
          ticks: {
            beginAtZero: true,
            min: 0
          }
        }]
      }
    }
  })

  function lineChartData(){

  }
}