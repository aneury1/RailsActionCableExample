module ApplicationCable
  # you can add more channel by extending ActionCable::Channel in this directory.
  class Channel < ActionCable::Channel::Base

#    def subscribed
#      puts 'user has trying to subscribe'   
#      puts 'user has trying to subscribe'
#      puts 'user has trying to subscribe'   
#      puts 'user has trying to subscribe'
#      # @room 'welcome'
      # stream_from "chat_#{params[:room]}"
      # ActionCable.server.broadcast("chat_#{params[:room]}", data)
 #     stream_from "channel"
  #  end
  
   # def unsubscribe

    #end 

    #def send_text(data)
     #   Message.create(message: 'holaaaaaa')
      #  ActionCable.server.broadcast('channel',
       #   message: 'new message'
       # )
    #end

    #def self.all_message(message)
     #  ActionCable.server.broadcast('channel', history: message)
    #end

  end
end
