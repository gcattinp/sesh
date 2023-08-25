// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"

const carousel = document.querySelector('.carousel');
new Flickity(carousel, {
  autoPlay: 3000,
  prevNextButtons: false
});
