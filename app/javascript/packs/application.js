// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");
require("jquery");
require('bootstrap');
require('jcrop-0.9.12/js/jquery.min');
require('jcrop-0.9.12/js/jquery.Jcrop.min');
require('jcrop-0.9.12/css/jquery.Jcrop.css');

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

import 'bootstrap'
import "../style/application"

document.addEventListener("turbolinks:load", () => {
  $('[data-toggle="tooltip"]').tooltip()
  $('[data-toggle="popover"]').popover()
})


var AvatarCrop,
  bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

$(function() {
  return new AvatarCrop();
});

AvatarCrop = (function() {
  function AvatarCrop() {
    this.updatePreview = bind(this.updatePreview, this);
    this.update = bind(this.update, this);
    var height, width;
    width = parseInt($('#cropbox').width());
    height = parseInt($('#cropbox').height());
    $('#cropbox').Jcrop({
      aspectRatio: 1,
      setSelect: [0, 0, width, height],
      onSelect: this.update,
      onChange: this.update
    });
  }

  AvatarCrop.prototype.update = function(coords) {
    $('#customer_crop_x').val(coords.x);
    $('#customer_crop_y').val(coords.y);
    $('#customer_crop_w').val(coords.w);
    $('#customer_crop_h').val(coords.h);
    return this.updatePreview(coords);
  };

  AvatarCrop.prototype.updatePreview = function(coords) {
    var rx, ry;
    rx = 100 / coords.w;
    ry = 100 / coords.h;
    return $('#preview').css({
      width: Math.round(rx * $('#cropbox').width()) + 'px',
      height: Math.round(ry * $('#cropbox').height()) + 'px',
      marginLeft: '-' + Math.round(rx * coords.x) + 'px',
      marginTop: '-' + Math.round(ry * coords.y) + 'px'
    });
  };

  return AvatarCrop;

})();
