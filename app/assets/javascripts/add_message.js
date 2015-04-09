$(document).ready(function(){
  $('#new_message').on('submit', function(event){
    event.preventDefault();
    var $form = $(event.target);
    var url = $form.attr('action');
    console.log('url', url);
    var dfd = $.ajax(url, {
      type: 'POST',
      data: $form.serialize(),
      dataType: 'html'
    });
    dfd.done(function(data){
      $('#message_list').append(data);
      $('#new_message')[0].reset();
    });
  });
});