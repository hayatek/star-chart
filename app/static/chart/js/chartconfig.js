console.log(resource_path);
var barChart = {
      type: 'horizontalBar',
      data: {
        labels: barLabels,
        datasets: [
          {
            label: 'Repositoryのスター数',
            data: barDefaultData,
            backgroundColor: ['#64B5F6','#F06292','#FFF176'],
            borderColor: '#ffffff'
          },
        ],
      },
      options: {
        legend: { display: false },
        data: {
              labels: {
                  fontColor: '#ffffff'
              }
        },
        title: {
          display: true,
          fontColor: '#ffffff'
        },
        scales: {
         xAxes: [{
            ticks: {
               beginAtZero: true
            }
         }]
        },
      plugins: [{
        beforeInit: function (chart) {
          chart.data.labels.forEach(function (item, i, a) {
            if (item.length > 5) {
                a[i] = item.split("/");
            }
          })
        }
      }]
    }
}
var lineChart = {
      type: 'line',
      data: {
        labels: ["9/1", "10/1", "11/1", "12/1", "1/1"],
        datasets: [
          {
            label: "vuejs",
            fill: false,
            lineTension:0,
            borderColor:["#1A97C6"],
            data: [300,400,250,600,700]
          },{
            label: "rails",
            fill: false,
            lineTension:0,
            borderColor:["#E4D836"],
            data: [200,300,350,500,600]
          },{
            label: "django",
            fill: false,
            lineTension:0,
            borderColor:["#E74759"],
            data: [100,200,450,300,400]
          }]
      },
      options: {
        legend: { display: false },
        title: {
          display: true,
        }
      }
 }
window.onload = function() {
    var ctx1 = document.getElementById("barChart").getContext("2d");
    window.myLine = new Chart(ctx1, barChart);
    var ctx2 = document.getElementById("lineChart").getContext("2d");
    window.line = new Chart(ctx2, lineChart);
}
