
$( document ).ready(function() {

    $("#basic-tooltip").popover({
            "placement" : "bottom",
            "trigger": "hover",
               "delay": 200
      });

       
$(function(){
  function stripTrailingSlash(str) {
    if(str.substr(-1) == '/') {
      return str.substr(0, str.length - 1);
    }
    return str;
  }

  var url = window.location.pathname;
  var activePage = stripTrailingSlash(url);

  $('.nav li a').each(function(){
    var currentPage = stripTrailingSlash($(this).attr('href'));

    if (activePage == currentPage) {
      $(this).parent().addClass('active');
    }
  });
});


});
