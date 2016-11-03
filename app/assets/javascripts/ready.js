$( document ).on( 'mouseenter', '.js-expandable', function ( evt, el ) {
    $( this ).addClass( '-hover' );
} );

$( document ).on( 'mouseleave', '.js-expandable', function ( evt, el ) {
    $( this ).removeClass( '-hover' );
} );
