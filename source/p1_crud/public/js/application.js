$(document).ready(function(){
  var expand = document.querySelector('.expand');
  expand.hidden = true;
  bindNoteListener();
  bindExpandListener();
});

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

