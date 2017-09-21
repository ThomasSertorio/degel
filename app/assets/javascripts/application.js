//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .

(function() {
  setInterval(function(){
    $( "body" ).load( window.location.pathname + " .container")
  }, 30000)
}())
