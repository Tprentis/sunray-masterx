// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require admins/jquery-1.8.2.min
//= require admins/bootstrap
//= require admins/jquery.placeholder
//= require admins/jquery.mousewheel
//= require admins/template
//= require admins/setup
//= require admins/customizer
//= require admins/jquery.uniform
//= require admins/jquery-ui-1.8.24
//= require admins/jquery-ui.custom
//= require admins/jquery-ui-timepicker
//= require admins/jquery.ui.touch-punch
//= require admins/excanvas
//= require admins/jquery.flot
//= require admins/plugins/jquery.flot.tooltip.min
//= require admins/plugins/jquery.flot.pie.min
//= require admins/plugins/jquery.flot.resize.min
//= require admins/circular-stat
//= require admins/jquery.sparkline
//= require admins/jquery.ibutton
//= require admins/fullcalendar
//= require admins/jquery.dataTables
//= require admins/TableTools/TableTools
//= require admins/dataTables.bootstrap
//= require admins/dashboard
//= require admins/jquery.validate.min
//= require admins/wizard.min
//= require admins/jquery.form.min
//= require admins/form_wizard
//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require active_scaffold
  ActiveScaffold.highlight = function(element) { 
    if (typeof(element) == 'string') element = jQuery('#' + element); 
    if (typeof(element.effect) == 'function') { 
      element.effect("highlight", {change_color_option}, 3000); 
    } 
  };  
