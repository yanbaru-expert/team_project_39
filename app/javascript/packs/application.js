require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("bootstrap/dist/js/bootstrap")

// ボタン切り替え用処理
$(function() {
  const btn_message = ["視聴済みにする","視聴済みを解除"]
  const btn_color = ["btn-primary", "btn-secondary"]
  $( '.btn').on('click', function(){
    if($(this).hasClass('btn-secondary')){
      change_button($(this), btn_message[1], btn_color[1], btn_color[0]);
    } else {
      change_button($(this), btn_message[0], btn_color[0], btn_color[1]);
    }
  });
  function change_button (btn, message, remove_color, add_color){
    btn.text(message);
    btn.removeClass(remove_color);
    btn.addClass(add_color);
  };
});