$(document).ready(function(){
  var expand = document.querySelector('.expand');
  expand.hidden = true;
  bindPostListener();
  bindExpandListener();
});

var bindPostListener = function(){
  var titles = document.querySelectorAll('.post-title');
  for(var i = 0; i < titles.length; i++){
    titles[i].addEventListener('click', hideContent);
  }
};

var hideContent = function(){
  var parent = this.parentElement;
  killPosts();
  var postContent = parent.querySelector('.post-content');
  postContent.hidden = false;
  var expand = document.querySelector('.expand');
  expand.hidden = false;
};

var killPosts =  function(){
  var posts = document.querySelectorAll('.post');
  for(var i = 0; i < posts.length; i++){
    var postContent = posts[i].querySelector('.post-content');
    postContent.hidden = true;
  }
};

var bindExpandListener = function(){
  var expand = document.querySelector('.expand');
  expand.addEventListener('click', showContent);
};

var showContent = function(){
  var posts = document.querySelectorAll('.post-content');
  for(var i = 0; i < posts.length; i++){
    posts[i].hidden = false;
  }
  this.hidden = true;
};

