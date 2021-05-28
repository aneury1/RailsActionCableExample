module ApplicationCable
  # you can add more channel by extending ActionCable::Channel in this directory.
  class ChatChannel < ActionCable::Channel::Base


    def subscribed
      puts 'user has trying to subscribe'   
      puts 'user has trying to subscribe'
      puts 'user has trying to subscribe'   
      puts 'user has trying to subscribe'
      # @room 'welcome'
      # stream_from "chat_#{params[:room]}"
      # ActionCable.server.broadcast("chat_#{params[:room]}", data)
      stream_from "chat_channel"
    end
  
    def unsubscribe

    end 

    def send_text(data)
        Message.create(message: 'holaaaaaa')
        ActionCable.server.broadcast('chat_channel',
          message: 'new message'
        )
    end

    def self.all_message(message)
       ActionCable.server.broadcast('chat_channel', history: message)
    end

      def receive(data)
        ActionCable.server.broadcast("chat_#{params[:room]}", data)
      end

  end
end
