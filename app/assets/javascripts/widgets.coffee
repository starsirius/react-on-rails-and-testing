# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  widgets = [
    'Screwdriver',
    'Brush',
    'Hammer',
    'Knife'
  ]

  $('#suggest-widgets').on 'click', (e) ->
    e.preventDefault()

    # Simulate async behaviors like ajax calls.
    setTimeout ->
      $('.widgets-suggestion').html widgets.join(', ')
    , 1000
