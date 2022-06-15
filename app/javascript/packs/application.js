// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "bootstrap"
import "@fortawesome/fontawesome-free/css/all"  
import "stylesheets/application"
import "packs/charts"
  
Rails.start()
Turbolinks.start()
ActiveStorage.start()


document.addEventListener('turbolinks:load', () => {
  var ctx = document.getElementById('myChart').getContext('2d');
  ctx.canvas.width = 300;
  ctx.canvas.height = 300;
  var myChart = new Chart(ctx, {
  type: 'doughnut',
  maintainAspectRatio: true, 
  data: {
      labels: JSON.parse(ctx.canvas.dataset.labels),
      datasets: [{
          data: JSON.parse(ctx.canvas.dataset.data),
          backgroundColor: [
            'rgb(255, 99, 132)',
            'rgb(54, 162, 235)',
            'rgb(0, 0, 0)',
            ],
          hoverOffset: 4
      }]
  },
  });
})