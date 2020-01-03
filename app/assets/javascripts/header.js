$(function() {

  var html = `<div class="dropdwn">
                <a href="/foods/new">食べ物</a>
              </div>`


  $(".post").hover(
    function() {
      $(this).append(html);
    },
    function() {
      $(".dropdwn").remove();
    }
  );
});