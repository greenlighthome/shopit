$( document ).ready(function() {

  $("#basic-tooltip").popover({
    "placement" : "bottom",
    "trigger": "hover",
    "delay": 300
  });

  $("#warning-tooltip").popover({
    "placement" : "bottom",
    "trigger": "click",
    "delay": 100
  });

  /**
   * Active link page
   */
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

    $(function(){
      $('#search').keyup(function() {
        $.ajax({
          type: "POST",
          url: "/search/",
          data: {
            'search_text' : $('#search').val(),
            'csrfmiddlewaretoken' : $("input[name=csrfmiddlewaretoken]").val()
          },
          success: searchSuccess,
          dataType: 'html'
        });
      });
    });
    function searchSuccess(data, textStatus, jqXHR) {
      $('#search-results').html(data);
    }
});



