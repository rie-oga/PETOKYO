// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require jquery_ujs
//= require activestorage
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .

//topページ main-visual//
if(!navigator.userAgent.match(/(iPhone|Android)/)){
$(function(){
  $(ScrollReveal().reveal('.main-visual:nth-child(1)', {
       duration: 1500,
       viewFactor: 1,
       reset: false,
       distance: '200px',
       origin: 'top',
       delay: 100//実行されるまでの時間//
     }));
});
}
$(function(){
  $(ScrollReveal().reveal('.main-visual:nth-child(2)', {
       duration: 1500,
       viewFactor: 1,
       reset: false,
       distance: '200px',
       origin: 'top',
       delay: 600
     }));
});
$(function(){
  $(ScrollReveal().reveal('.main-visual:nth-child(3)', {
       duration: 1500,
       viewFactor: 1,
       reset: false,
       distance: '200px',
       origin: 'top',
       delay: 1100
     }));
});
$(function(){
  $(ScrollReveal().reveal('.main-visual:nth-child(4)', {
       duration: 1500,
       viewFactor: 1,
       reset: false,
       distance: '200px',
       origin: 'top',
       delay: 1600
     }));
});

//topページ　about//
$(function(){
  $(ScrollReveal().reveal('.about-container:nth-child(2)', {
       duration: 1500, // アニメーションの完了にかかる時間
       viewFactor: 0.2, // 0~1,どれくらい見えたら実行するか
       reset: false, // 何回もアニメーション表示するか
       distance: '150px',//500pxの距離から
       origin: 'left',//表示される方向
     }));
});
$(function(){
  $(ScrollReveal().reveal('.about-container:nth-child(3)', {
       duration: 1500,
       viewFactor: 0.2,
       reset: false,
       distance: '-150px',
       origin: 'left'
     }));
});
$(function(){
  $(ScrollReveal().reveal('.about-container:nth-child(4)', {
       duration: 1500,
       viewFactor: 0.2,
       reset: false,
       distance: '150px',
       origin: 'left'
     }));
});
$(function(){
  $(ScrollReveal().reveal('.about-center', {
       duration: 2000,
       viewFactor: 0.5,
       reset: false,
       distance: '150px',
       origin: 'bottom'
     }));
});

//topページ　introduction-img//
$(function(){
  $(ScrollReveal().reveal('.top-introduction-img1,.top-introduction-img2,.top-introduction-img3,.top-introduction-img4,.top-introduction-img5', {
       duration: 1500,
       viewFactor: 0.3,
       reset: false,
       distance: '100px',
       origin: 'bottom'
     }));
});

//spot-showページ//
$(document).on('turbolinks:load', function() {
  $(function () {
    $('.spot-nav-list-item').click(function() {
      $('.spot-nav-list-item').removeClass('pointer pointer2');
      $(this).addClass('pointer');
    });
  });
});



$(document).on('turbolinks:load', function() {
  $(function () {
    $('.comment-click').on('click', function() {
        $('.img-box').hide();
        $('.comment-box-parent').show();
    });
  });
});

$(document).on('turbolinks:load', function() {
  $(function () {
    $('.img-click').on('click', function() {
        $('.comment-box-parent').hide();
        $('.img-box').show();
    });
  });
});

//member-showページ//
$(document).on('turbolinks:load', function() {
  $(function () {
    $('.spot-click').on('click', function() {
        $('.review-box').hide();
        $('#view-more2').hide();
        $('.member-spot-box').show();
    });
  });
});

$(document).on('turbolinks:load', function() {
  $(function () {
    $('.review-click').on('click', function() {
        $('.member-spot-box').hide();
        $('#view-more').hide();
        $('.review-box').show();
    });
  });
});

//スマホナビの表示・非表示//
$(document).on('turbolinks:load', function() {
  $(function() {
     const hum = $('#hamburger, .close')
     const nav = $('.sp-nav')
     hum.on('click', function(){
        nav.toggleClass('toggle');
     });
  });
});
// hamburger ✕へ //
$(document).on('turbolinks:load', function() {
  $(function(){
    $('.btn-trigger').on('click', function() {
      $(this).toggleClass('active');
      return false;
    });
  });
});

// footer最下部へ（jQuery）//
$(function(){
  // DOM取得後、変数へ
    var $ftr = $('#footer');
  //window.innerHeightで、画面全体の高さを取得
  //$ftr.offset().topで、ドキュメントの上からfooterまでの高さを取得
  //$ftr.outerHeight()で、footer自身の高さを取得
    if( window.innerHeight > $ftr.offset().top + $ftr.outerHeight() ){
  //$ftr.offset().topと$ftr.outerHeight()の合計よりも、画面全体の高さが大きくなったら、styleを付け足す
  //付け足す高さは、画面全体の高さ-footer自身の高さ。これで最下部に固定される
      $ftr.attr({'style': 'position:fixed; top:' + (window.innerHeight - $ftr.outerHeight()) +'px;' });
    }
});

// left_side_bar footerと被らないように //
jQuery(window).on("scroll", function() {
  documentHeight = jQuery(document).height();//ドキュメントの高さ
  scrollPosition = jQuery(this).height() + jQuery(this).scrollTop();//どのくらいスクロールしたか
  var scrollTop = jQuery(window).scrollTop();
  var headerHeight = jQuery(".pc-header").innerHeight();
  footerHeight = jQuery("#footer").innerHeight();//footerの高さ
  var fixedEl = jQuery("#fixed1,#fixed2")

  if (documentHeight - scrollPosition < footerHeight) {
    fixedEl.css({
      top: "initial",
      bottom: footerHeight - (documentHeight - scrollPosition)
    });
  } else if ( scrollTop <= headerHeight ) {
    fixedEl.css({
      top: headerHeight - scrollTop
    });
  } else {
    fixedEl.css({
      top: 0
    });
  }
});