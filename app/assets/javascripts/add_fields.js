// EVENT HANDLERS

$(document).on('click', '.link-to-add-fields', function (event) {
  
  event.preventDefault();

  var $link = $(this);
  var association = $(this).data('association');
  var content = $(this).data('content');

  addFields($link, association, content);
});

$(document).on('click', '.link-to-remove-fields', function (event) {
  
  event.preventDefault();

  var $fieldset = $(this).closest('fieldset');
  
  // If the record has never been saved to the database, it suffices to simply 
  // remove the fields.
  if ($fieldset.find('.js-destroy-checkbox').data('new-record')) {
    $fieldset.remove();
  }
  // ...Otherwise, the _destroy option has to be passed with a truthy value so 
  // that Rails will delete the record.
  else {
    $fieldset.find('.js-destroy-checkbox').val('1');
    $fieldset.hide();
  }
});

// FUNCTIONS

// Append fields to the .can-add-fields element.
function addFields ($link, association, content) {

  // Generate an always-unique id for the fields so that separate entries will 
  // not conflict when Rails processes the form.
  var new_id = new Date().getTime();
  var regexp = new RegExp('new_' + association, 'g');
  var $fieldsetContainer = $link.closest('.can-add-fields-container').closestDescendants('.can-add-fields');

  $fieldsetContainer.append(content.replace(regexp, new_id));
}
