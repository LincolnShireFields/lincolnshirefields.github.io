$(function() {
  /* KLUDGE, unattractive and someone is bound to break it eventually,
      but it works for now */ 
  $('ul.nav li').removeClass('active');
  var page = window.location.pathname.split('/')[1];
  if ( page.length ) {
    $( '.navbar a[href^="/' + page +'"]' ).parent('li').addClass('active');
  } else {
    $( '.navbar a[href="/"]' ).parent('li').addClass('active');
  }   
});
