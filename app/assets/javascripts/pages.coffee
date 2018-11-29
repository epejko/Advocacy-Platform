# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
    $('.navbar-nav').css('background-color', '#364253')
    $('.navbar-nav').css('border-bottom', '1px solid black')
    $('#full-navbar').css('z-index', 9)