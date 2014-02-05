$(document).ready(function() {
  $('#delete').submit(function(e) {
    if(!confirm('Are you sure you want to delete this note?')) {
        e.preventDefault();
        return;
    }
});
});
