$(document).ready(function() {



});


<h2>Want to Delete this Note?</h2>
<script> var confirmDelete = function() { alert('Are you sure you want to delete this note?'); }</script>
  <form method='post' action='/notes/<%= @note.id %>' onsubmit="confirmDelete()">
    <input type="hidden" name="_method" value="delete">
    <button type='submit'>Delete!</button>
  </form>