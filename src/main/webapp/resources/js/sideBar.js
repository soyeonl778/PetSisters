$(document).ready(function () {
  $(window).scroll(function () {
    var scrollTop = $(document).scrollTop();
    var footerOffset = $(".link_footer").offset().top;
    var windowHeight = $(window).height();

    if (scrollTop + windowHeight > footerOffset) {
      scrollTop = footerOffset - windowHeight;
    }

    $(".snb_my").stop();
    $(".snb_my").animate({ "top": scrollTop });
  });
});