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