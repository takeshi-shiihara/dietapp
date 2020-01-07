$(function() {

  var html = `<ul class="dropdwn">
                <li><a href="/foods/new">食べ物</a></li>
                <li class="weight"><a href="">体重</a></li>
              </ul>`


  $(".post").hover(
    function() {
      $(this).append(html);
    },
    function() {
      $(".dropdwn").remove();
    }
  );
});