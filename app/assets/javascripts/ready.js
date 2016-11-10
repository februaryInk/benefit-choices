$( document ).ready( ready );
$( document ).on( 'turbolinks:load', ready );

function ready (  ) {
    
    var path = window.location.pathname;
    
    // style the appropriate links.
    openLink( path );
}

$( document ).on( 'mouseenter', '.js-expandable', function ( evt, el ) {
    
    $( this ).addClass( '-hover' );
} );

$( document ).on( 'mouseleave', '.js-expandable', function ( evt, el ) {
    
    $( this ).removeClass( '-hover' );
} );

// detect the open link and style it a certain way.
function openLink( path ) {
    
    var $openLink = $( 'a[ href="' + path + '" ].js-openable-link' );
    $openLink.addClass( '-open' );
}
