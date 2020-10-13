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
//= require turbolinks
//= require_tree .





//customer_top
$(function() {
    $('.top_image').slick({

        autoplay: true, //自動再生の有効化
        slidesToShow: 2, //同時に表示されるスライドの数
        centerMode: true, //現在のスライドを中央に表示し、前後のスライドを左右に見切れた状態で表示
        autoplaySpeed: 0, //自動再生時のスライドの静止時間
        speed: 12000, //アニメーションの切り替えスピード
        pauseOnFocus: false, //autoplay: trueの時、スライドをフォーカスしたら一時停止するかどうか
        pauseOnHover: false, //autoplay: trueの時、スライドにホバーさせると一時停止するかどうか
        responsive: true,

    });
});




//cusomer_party
$(function() {
    $('.party_image').slick({

    });
});




//cusomer_wedding
$(function() {
    $('.wedding_image').slick({
    	
    });
});