class ChatRoom1vs1Channel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from 'chat_room1vs1_channel'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    ActionCable.server.broadcast 'chat_room1vs1_channel', message: data['message']
  end
end
