//= require jquery
//= require jquery_ujs
// require turbolinks

//= require moment
//= require fullcalendar
//= require bootstrap-datepicker
//= require bootstrap-datepicker/core
//= require bootstrap-datepicker/locales/bootstrap-datepicker.zh-TW.js




//= require_tree ./plugins
//= require_tree .

$(document).ready(function(){
  $('.redactor').redactor({
    minHeight: 300,
    lang: 'zh_tw',
    imageUpload: '/redactor_images',
    imageUploadParam: 'redactor_image[image]'

  });

  $('.sc_date').datepicker({
    format: "yyyy-mm-dd",
    startView: 1,
    todayBtn: "linked",
    language: "zh-TW"
  });

  $('.form_datetime').datepicker({
    format: "yyyy-mm-dd",
    startView: 1,
    todayBtn: "linked",
    language: "zh-TW"
  });

});

