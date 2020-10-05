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
$(function() {
	$('.slider').slick({
		dots: true,//下部ドットナビゲーション
		autoplay: true,//trueで自動再生
		autoplaySpeed: 4000,
		infinite: true,//無限にスライド
		fade: true,//trueでスライド切り替え時にフェードインアウト
		pauseOnFocus: true//ドットクリック時、自動再生を一時中止
	});
});

//topページ main-visual//
$(function(){
  $('.main-visual:nth-child(1)').slideDown(300);
});
$(function(){
  $('.main-visual:nth-child(2)').slideDown(500);
});
$(function(){
  $('.main-visual:nth-child(3)').slideDown(700);
});
$(function(){
  $('.main-visual:nth-child(4)').slideDown(900);
});

//topページ　about//
$(function(){
  $(ScrollReveal().reveal('.about-container:nth-child(2)', {
       duration: 2000, // アニメーションの完了にかかる時間
       viewFactor: 1, // 0~1,どれくらい見えたら実行するか
       reset: false, // 何回もアニメーション表示するか
       distance: '200px',//500pxの距離から
       origin: 'left',//表示される方向
       delay: 2000 //実行されるまでの時間
     }));
});
$(function(){
  $(ScrollReveal().reveal('.about-container:nth-child(3)', {
       duration: 2000,
       viewFactor: 1,
       reset: false,
       distance: '-200px',
       origin: 'left'
     }));
});
$(function(){
  $(ScrollReveal().reveal('.about-container:nth-child(4)', {
       duration: 2000,
       viewFactor: 1,
       reset: false,
       distance: '200px',
       origin: 'left'
     }));
});
$(function(){
  $(ScrollReveal().reveal('.about-center', {
       duration: 3000, // アニメーションの完了にかかる時間
       viewFactor: 1, // 0~1,どれくらい見えたら実行するか
       reset: false, // 何回もアニメーション表示するか
       distance: '200px',//500pxの距離から
       origin: 'bottom'
     }));
});

//topページ　introduction-img//
$(function(){
  $(ScrollReveal().reveal('.top-introduction-img1,.top-introduction-img2,.top-introduction-img3,.top-introduction-img4,.top-introduction-img5', {
       duration: 3000, // アニメーションの完了にかかる時間
       viewFactor: 1, // 0~1,どれくらい見えたら実行するか
       reset: false, // 何回もアニメーション表示するか
       distance: '100px',//500pxの距離から
       origin: 'bottom'
     }));
});
