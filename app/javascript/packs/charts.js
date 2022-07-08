document.addEventListener('turbolinks:load', () => {
  var ctx = document.getElementById('mixedChart').getContext('2d');
  var mixedChart = new Chart(ctx, {
  type: 'bar',
  data: {
    labels: JSON.parse(ctx.canvas.dataset.labels),
    datasets: [{
      type: 'bar',
      label: 'Bar Dataset',
      data: [60, 15, 20, 30, 40, 50, 25],
      borderColor: 'rgb(255, 99, 132)',
      backgroundColor: 'rgba(255, 99, 132, 0.2)'
    }, {
      type: 'line',
      label: 'Line Dataset',
      data: [50, 45, 21, 50, 11, 44],
      fill: false,
      borderColor: 'rgb(54, 162, 235)'
    }]
  },
  });
})