$(document).ready(function() {
  var current_li;
  $("#thumbnail img").click(function() {
    var src = $(this).attr("src");
    current_li= $(this).parent();
    $("#frameImage").attr("src", src);
    $("#frame").fadeIn();
    $("#overlay").fadeIn();
  });
  $("#overlay").click(function() {
    $(this).fadeOut();
    $("#frame").fadeOut();
  });

  $("#right").click(function() {
    if(current_li.is(":last-child")){
      var next_li = $("#thumbnail li").first();
    }
    else {
      var next_li = current_li.next();
    }

    var next_src = next_li.children("img").attr("src");
    $("#frameImage").attr("src", next_src);
    current_li = next_li;
  });

  $("#left").click(function() {
    if(current_li.is(":first-child")) {
      var prev_li = $("#thumbnail li").last();
    }
    else {
      var prev_li = current_li.prev();
    }
    var prev_src = prev_li.children("img").attr("src");
    $("#frameImage").attr("src", prev_src);
    current_li = prev_li;
  });

  $("#frame").mouseover(function() {
    $("#left img, #right img").fadeIn();
  });

  $("#frame").mouseleave(function() {
    $("#left img, #right img").fadeOut();
  });
});
