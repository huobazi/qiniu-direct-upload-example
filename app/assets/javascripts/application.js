// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//
//= require jquery-fileupload/basic
//= require jquery-fileupload/vendor/tmpl
//
//= require_tree .
//
//
//# 生成一个随机字符串
function generate_random_string(length) {
  var chars = '0123456789abcdefghiklmnopqrstuvwxyz';
  var sRnd = '';
  for (var i=0; i<length; i++){
    var randomPoz = Math.floor(Math.random() * chars.length);
    sRnd += chars.substring(randomPoz,randomPoz+1);
  }
  return sRnd;
}

