// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")

import '../css/application.css'


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

/*global $*/

// port new



$( document ).on('turbolinks:load', function() {
  function readURL(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();
 
      reader.onload = function (e) {
        $('.port-main-image').attr('src', e.target.result);
      }
      reader.readAsDataURL(input.files[0]);
    }
  }
 
  $(".image_field").change(function(){
    $('.port-main-image').removeClass('hidden');
    $('.portpic-default').remove();
    readURL(this);
  });
});

$( document ).on('turbolinks:load', function() {
    function readURL(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();
 
      reader.onload = function (e) {
        $('.port-sub-image1').attr('src', e.target.result);
      }
      reader.readAsDataURL(input.files[0]);
    }
  }
 
  $(".subimage_field1").change(function(){
    $('.port-sub-image1').removeClass('hidden');
    $('.sub-portpic-default1').remove();
    readURL(this);
  });
});

$( document ).on('turbolinks:load', function() {
  function readURL(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();
 
      reader.onload = function (e) {
        $('.port-sub-image2').attr('src', e.target.result);
      }
      reader.readAsDataURL(input.files[0]);
    }
  }
 
  $(".subimage_field2").change(function(){
    $('.port-sub-image2').removeClass('hidden');
    $('.sub-portpic-default2').remove();
    readURL(this);
  });
});
  

$( document ).on('turbolinks:load', function() {
  function readURL(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();
 
      reader.onload = function (e) {
        $('.port-sub-image3').attr('src', e.target.result);
      }
      reader.readAsDataURL(input.files[0]);
    }
  }
 
  $(".subimage_field3").change(function(){
    $('.port-sub-image3').removeClass('hidden');
    $('.sub-portpic-default3').remove();
    readURL(this);
  });
    
});



$( document ).on('turbolinks:load', function(){
  setTimeout("$('.flash').fadeOut('slow')", 6000);
});


//$(document).on("turbolinks:load", function () {
  //$("#port_port_images").on("change", function (e) {
    //var files = e.target.files;
    //var d = new $.Deferred().resolve();
    //$.each(files, function (i, file) {
      //d = d.then(function () {
        //return previewImage(file);
      //});
    //});
  //});

  //var previewImage = function (imageFile) {
    //var reader = new FileReader();
    //var img = new Image();
    //var def = $.Deferred();
    //reader.onload = function (e) {
      // 画像を表示
      //$(".image_preview").empty();
      //$(".image_preview").append(img);
      //img.src = e.target.result;
      //def.resolve(img);
    //};
    //reader.readAsDataURL(imageFile);
    //return def.promise();
  //};
//});