$(document).ready(function(){
  var expand = document.querySelector('.expand');
  expand.hidden = true;
  bindNoteListener();
  bindExpandListener();
  $('.edit-form-button').on('click', function(e) {
    e.preventDefault();
    getEditForm(e);
  })
  $('.note').on('click', '.delete', function(e) {
    e.preventDefault();
    deleteNote(e);
  })
  $('.note').on('submit', '.update', function(e) {
    e.preventDefault();
    updateNote(e);
  })

  $('.new-note').on('click', function(e) {
    e.preventDefault();
    newNoteForm(e);
  })
});

///////////////
// AJAX CALLS
///////////////

function getEditForm(e) {
  var $element = $(e.target)
  $.ajax({
    method: "GET",
    url: $element.attr('data-url')
  }).done(function(response) {
    $element.closest('.note').html(response);

  }).fail(function() {
    console.log('Get edit form failed');
  })
}

function deleteNote(e) {
  var $element = $(e.target)
  $.ajax({
    method: "DELETE",
    url: $element.attr('data-url')
  }).done(function(response){
    $element.closest('.note').html(response);
  }).fail(function(){
    console.log("Delete note failed.");
  });
}

function newNoteForm(e) {
   var $element = $(e.target)
  $.ajax({
    method: "GET",
    url: $element.attr('data-url')
  }).done(function(response){
    $('.new-note-form').html(response);
  }).fail(function(){
    console.log("Get new note form failed.");
  });
}

function updateNote(e) {
  var form = e.target
  $.ajax({
    method: form.method,
    url: form.action,
    data: $(form).serialize()
  }).done(function(response) {
    $(form).closest('.note').html(response);
  }).fail(function() {
    console.log("Update note failed");
  })
}

/////////////////
// EXPAND NOTES
/////////////////

var bindNoteListener = function(){
  var titles = document.querySelectorAll('.note-title');
  for(var i = 0; i < titles.length; i++){
    titles[i].addEventListener('click', hideContent);
  }
};

var hideContent = function(){
  var parent = this.parentElement;
  killNotes();
  var noteContent = parent.querySelector('.note-content');
  noteContent.hidden = false;
  var expand = document.querySelector('.expand');
  expand.hidden = false;
};

var killNotes =  function(){
  var notes = document.querySelectorAll('.note');
  for(var i = 0; i < notes.length; i++){
    var noteContent = notes[i].querySelector('.note-content');
    noteContent.hidden = true;
  }
};

var bindExpandListener = function(){
  var expand = document.querySelector('.expand');
  expand.addEventListener('click', showContent);
};

var showContent = function(){
  var notes = document.querySelectorAll('.note-content');
  for(var i = 0; i < notes.length; i++){
    notes[i].hidden = false;
  }
  this.hidden = true;
};

