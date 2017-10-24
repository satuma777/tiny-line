App.chat_room1vs1 = App.cable.subscriptions.create "ChatRoom1vs1Channel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    $('#chat_messages').append '<div>' + data['message'] + '</div>'

  speak: (message) ->
    @perform 'speak', message: message

$(document).on 'keypress', '[data-behavior~=speak_chat_room1vs1]', (event) ->
  if event.keyCode is 13
    App.chat_room1vs1.speak event.target.value
    event.target.value = ''
    event.preventDefault()