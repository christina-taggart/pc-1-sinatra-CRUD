$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});

function confirmLink(url, type) {
	if (confirmDialog()) {
		sendLink(url, type)
		location.reload()
	}
}

function confirmDialog() {
	return confirm('Are you sure?')
}

function sendLink(url, type) {
	xmlhttp=new XMLHttpRequest()
	var parameters="_method="+type;
	xmlhttp.open('post',url,false);
	xmlhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded')
	xmlhttp.send(parameters)
}