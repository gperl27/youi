// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/** Alter jQuery CSS function to extract all CSS properties of any element **/
/** This is the key to sending properties to the server **/
/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/

jQuery.fn.css2 = jQuery.fn.css;
jQuery.fn.css = function() {
    if (arguments.length) return jQuery.fn.css2.apply(this, arguments);
    var attr = ['font-family','font-size','font-weight','font-style','color',
  'text-transform','text-decoration','letter-spacing','word-spacing',
  'line-height','text-align','vertical-align','direction','background-color',
  'background-image','background-repeat','background-position',
  'background-attachment','opacity','width','height','top','right','bottom',
  'left','margin-top','margin-right','margin-bottom','margin-left',
  'padding-top','padding-right','padding-bottom','padding-left',
  'border-top-width','border-right-width','border-bottom-width',
  'border-left-width','border-top-color','border-right-color',
  'border-bottom-color','border-left-color','border-top-style',
  'border-right-style','border-bottom-style','border-left-style','position',
  'display','visibility','z-index','overflow-x','overflow-y','white-space',
  'clip','float','clear','cursor','list-style-image','list-style-position',
  'list-style-type','marker-offset'];
    var len = attr.length, obj = {};
    for (var i = 0; i < len; i++) 
        obj[attr[i]] = jQuery.fn.css2.call(this, attr[i]);
    return obj;
}