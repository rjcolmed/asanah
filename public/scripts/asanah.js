// adds asana from pool to user list
$('.asana').on('click', function() {
  event.stopPropagation();
  $(this).clone().appendTo($('.usr-sequence'));
});

// removes asana from user list
$('.usr-sequence').on('click', '.asana', function() {
  $(this).remove();
});

// removes asanas from user list when editing
$('.list-asana').on('click', function() {
  $(this).remove();
});

$('.secondary.vertical.pointing.menu .item').tab();

$('input[name="display"]').on('change', function() {
  if ($(this).val() == 'english') {
    $('div.item.asana').each(function(){
      this.innerText = '<%= asana.english_name %>';
    });
  } else {
    $('div.item.asana ').each(function(){
      this.innerText = '<%= asana.transliterated_name %> (<%= asana.devanagari_name %>)';
    });
  }
});
