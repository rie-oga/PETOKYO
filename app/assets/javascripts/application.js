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
//= require activestorage
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .

//topページ main-visual//
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
$(function () {
    $('.spot-click').on('click', function() {
        $('.review-box').hide();
        $('.member-spot-box').show();
    });
});

//member-showページ//
