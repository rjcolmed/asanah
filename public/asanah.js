// adds asana from pool to user list
$('.asana').on('click', function() {
  event.stopPropagation();
  $(this).clone().appendTo($('.usr-sequence'));
});

//removes asana from user list
$('.usr-sequence').on('click', '.asana', function() {
  $(this).remove();
});
