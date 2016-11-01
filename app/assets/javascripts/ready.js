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

$( document ).on( 'click', '.js-expandable', function ( evt, el ) {
    if ( $( this ).hasClass( '-open' ) ) {
        $( this ).find( '.js-expandable-hidden' ).slideUp( 250 );
        $( this ).removeClass( '-open' );
    } else {
        $( this ).find( '.js-expandable-hidden' ).slideDown( 250 );
        $( this ).addClass( '-open' );
    }
} );
