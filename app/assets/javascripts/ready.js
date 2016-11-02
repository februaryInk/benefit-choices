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

$( document ).on( 'mouseenter', '.js-expandable', function ( evt, el ) {
    $( this ).addClass( '-hover' );
} );

$( document ).on( 'mouseleave', '.js-expandable', function ( evt, el ) {
    $( this ).removeClass( '-hover' );
} );
