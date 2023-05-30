'use strict';

window.onload = function () {
  goTop();
}

// 상단버튼
const goTop = () => {
  // Scroll | button show/hide
  window.addEventListener('scroll', () => {
    if (document.querySelector('html, body').scrollTop > 300) {
      document.getElementById('go-top').style.display = "block";
    } else {
      document.getElementById('go-top').style.display = "none";
    }
  });
  // back to top
  document.getElementById('go-top').addEventListener('click', () => {
    window.scrollTo({
      top: 0,
      left: 0,
      behavior: 'smooth'
    });
  })
};

// 슬릭슬라이더
$(document).ready(function () {

  // 슬라이더 버전1
  // $('.autoplay').slick({
  //   slidesToShow: 3,
  //   slidesToScroll: 4,
  //   draggable: true,
  //   autoplaySpeed: 1100,
  //   arrows: true,
  //   slide: 'li',
  //   infinite: true,
  //   autoplay: true,
  //   centerMode: true,
  //   centerPadding: "250px",
  //   initialSlide: 0,
  // });

  // 슬라이더 버전2
  $('.slider').slick({
    slidesToShow: 3,
    slidesToScroll: 1,
    arrows: true,
    dots: false,
    centerMode: true,
    variableWidth: true,
    infinite: true,
    focusOnSelect: true,
    cssEase: 'linear',
    touchMove: true,
    prevArrow: '<button class="slick-prev"> < </button>',
    nextArrow: '<button class="slick-next"> > </button>',
    autoplay: true,
    infinite: true,
    autoplaySpeed: 1100
  });


  var imgs = $('.slider img');
  imgs.each(function () {
    var item = $(this).closest('.item');
    item.css({
      'background-image': 'url(' + $(this).attr('src') + ')',
      'background-position': 'center',
      '-webkit-background-size': 'cover',
      'background-size': 'cover',
    });
    $(this).hide();
  });


  $(window).scroll(function () {
    $('#bottomImg').each(function () {
      var position = $(this).offset().top;
      var viewTop = $(window).scrollTop() + $(window).height() * 0.85;
      if (position < viewTop) {
        $(this).addClass('active');
      }
    });
  });
})

function hideAni() {    
  const tooltip = $('.location_notice');
  tooltip && setTimeout(() => {

    tooltip.animate({

    }, 300, () => {
      tooltip.css('display', 'none');
    });
  }, 3000);
}

hideAni();

