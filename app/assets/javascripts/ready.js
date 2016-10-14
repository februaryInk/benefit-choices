$(document).ready(function () {
  $('.js-rating-meter').each(function (index, element) {
    new ratingMeter(element, 5);
  });
});

$(document).on('page:load', function () {
  $('.js-rating-meter').each(function (index, element) {
    new ratingMeter(element, 5);
  });
});
