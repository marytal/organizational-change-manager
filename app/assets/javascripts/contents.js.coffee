# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
value = 0
$(document).on 'ready page:load', ->
  $.hook('upvote').on 'click', ->
    $.ajax
      type: 'POST'
      data: { content_id: $(this).attr('id'), agree: true }
      url: '/opinions'
      success: (data) ->
        return unless data.change
        agree_count = $.hook("agree_" + data.opinion.content_id)[0]
        disagree_count = $.hook("disagree_" + data.opinion.content_id)[0]

        disagree_count.innerHTML = parseInt(disagree_count.innerHTML) - 1 unless (disagree_count.innerHTML == "0" || data.previous)
        agree_count.innerHTML = parseInt(agree_count.innerHTML) + 1

  $.hook('downvote').on 'click', ->
    $.ajax
      type: 'POST'
      data: { content_id: $(this).attr('id'), agree: false }
      url: '/opinions'
      success: (data) ->
        return unless data.change
        agree_count = $.hook("agree_" + data.opinion.content_id)[0]
        disagree_count = $.hook("disagree_" + data.opinion.content_id)[0]

        disagree_count.innerHTML = parseInt(disagree_count.innerHTML) + 1
        agree_count.innerHTML = parseInt(agree_count.innerHTML) - 1 unless (agree_count.innerHTML == "0" || data.previous)
