$(document).ready(function() {
  $('.add').submit(function(event){
    event.preventDefault()
    myRequest = $.ajax({
      type: "POST",
      url: '/notes',
      data: $(this).serialize()
    });
    myRequest.done(function(serverData){
      var note = JSON.parse(serverData).note
      $('#title').html( note.title )
      $('#content').html( note.content )
    })
  })

  $('.update').submit(function(event){
    event.preventDefault()
    myRequest = $.ajax({
      type: "PUT",
      url: 'notes/' + $('#id1').val(),
      data: $(this).serialize()
    });
  })

  $('.delete').submit(function(event){
    event.preventDefault()
    myRequest = $.ajax({
      type: "DELETE",
      url: 'notes/' + $('#id2').val(),
      data: $(this).serialize()
    });
  })

  $('input').on('click', function(){
    this.value = ""
  })
});
