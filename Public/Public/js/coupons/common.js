$(function(){
  // **************
  // 导航
  // **************
  $('.weui-tabbar').tab({
      defaultIndex: 0,
      activeClass: 'weui-bar__item_on',
      onToggle: function (index) {
        // if (index > 0) {
        //     $.toast(index)
        // }
        // if (index == 0) {
        //   window.location.href = "index.html";
        // }
        if (index == 1) {
          window.location.href = "cart.html";
        }
        if (index == 2) {
          window.location.href = "product.html";
        }
        if (index == 3) {
          window.location.href = "user.html";
        }
      }
  });

})