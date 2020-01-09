$(function() {

  var html = `<ul class="dropdwn">
                <li><a href="/foods/new" class="record-link">食べ物を記録する</a></li>
                <li class="weight"><a href="/weights/new" class="record-link">体重を記録する</a></li>
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