// adds asana from pool to user list when user clicks
$('.asana').on('click', function() {
  event.stopPropagation();
  $(this).clone().appendTo($('.usr-sequence'));
});

// removes asana from user list when user clicks
$('.usr-sequence').on('click', '.asana', function() {
  $(this).remove();
});

// removes asanas from user list when user clicks
$('.list-asana').on('click', function() {
  $(this).remove();
});

// allows tabs to show connected content when user clicks on each tab 
$('.secondary.vertical.pointing.menu .item').tab();

// allows user to toggle between displaying asana names in english and sanskrit
$('input[type="checkbox"]').on('change', function(){

      $('div#english').toggleClass('hidden')
      $('div#translit-devanagari').toggleClass('hidden')

});

