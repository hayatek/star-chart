var barChart =
{
      type: 'horizontalBar',
      data: {
        labels: barLabels,
        datasets: [{
            label: 'スター数',
            data: barDefaultData,
            backgroundColor: ['#64B5F6','#F06292','#1BC98D'],
            borderColor: '#ffffff'
        },],
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
//console.log(lineLabels);
//console.log(lineData2);
//console.log(lineData3);
var lineChart = {
      type: 'line',
      data: {
        labels: lineLabels,
        datasets: [
          {
            label: barLabels[0],
            fill: false,
            lineTension:0.2,
            borderColor:["#64B5F6"],
            data: lineData1
          },{
            label: barLabels[1],
            fill: false,
            lineTension:0.2,
            borderColor:["#F06292"],
            data: lineData2
          },{
            label: barLabels[2],
            fill: false,
            lineTension:0.2,
            borderColor:["#1BC98D"],
            data: lineData3
          }]
      },
      options: {
        legend: { display: false },
        title: { display: true },
        scales: {
         xAxes: [{
            ticks: {
               maxRotation: 30,
               minRotation: 30,
            }
         }]
        }
      }
 }
window.onload = function() {
    var ctx1 = document.getElementById("barChart").getContext("2d");
    window.myLine = new Chart(ctx1, barChart);
    var ctx2 = document.getElementById("lineChart").getContext("2d");
    window.line = new Chart(ctx2, lineChart);
}
