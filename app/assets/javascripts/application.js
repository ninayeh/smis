//= require jquery
//= require jquery_ujs
// require turbolinks

//= require bootstrap-datepicker
//= require bootstrap-datepicker/core
//= require bootstrap-datepicker/locales/bootstrap-datepicker.es.js
//= require bootstrap-datepicker/locales/bootstrap-datepicker.fr.js

//= require_tree ./plugins
//= require_tree .

$(document).ready(function(){
  $('.content').redactor({
    minHeight: 300,
    lang: 'zh_tw'
  });
});

