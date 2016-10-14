(function($) {

    // $.fn is an alias for jQuery.prototype. It allows the creation of custom 
    // jQuery functions.

    // Calling `serializeArray` on a form generates data of the form 
    // [{ name: 'greekLetter', value: 'alpha' }]. This function remaps it to the 
    // form { greekLetter: 'alpha' }.
    $.fn.serializeObject = function () {
        
        object = {};
        reference = this.serializeArray();
        
        for (var i = 0; i < reference.length; i++) {
            
            var entry = reference[i];
            
            if (entry.name in object) {
                object[entry.name] = object[entry.name] + "," + entry.value
            } else {
                object[entry.name] = entry.value;
            }
        }
        
        return(object);
    }

    // Like the native function `closest`, but for searching descendants rather
    // than ancestors.
    $.fn.closestDescendants = function (selector) {

        var distance = 10000;
        var nearest = $();
        var node = this;

        node.find(selector).each(function() {

            var n = $(this);
            var d = n.parentsUntil(node).length;

            if (d < distance) {
                distance = d;
                nearest = n;
            } 
            else if (d == distance) {
                nearest = nearest.add(this);
            }
        });

        return(nearest);
    }
})(jQuery);
