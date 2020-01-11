

// フォームに入力すると発火する
inputForm.on('keyup', function(){
  const target = $(this).val();
  search(target);
});
// ajax処理
$(function() {
  $("#user-search-field").on("keyup", function() {
    let input = $("#user-search-field").val();
    $.ajax({
      type: "GET",
      url: "/users",
      data: { keyword: input },
      dataType: "json"
    })
      .done(function(users) {
        console.log("成功です");
      })
      .fail(function() {
        console.log("失敗です");
      });
  });
});
