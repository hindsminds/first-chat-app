class MessagesController < ApplicationController
    before_action :authenticate_user!
  
    def index
        @messages = Message.all 
    end
  
    def new
      @messages = Message.all 
      @message = Message.new
      @recipients = User.all
    end
  
    def create
      @message = Message.new(message_params)
      # @message.sender_id = current_user.id
      
  
      respond_to do |f|
        f.js
      end
    end
  
    private
  
    def message_params
      params.require(:message).permit(:content, :recipient_id,:sender_id)
    end
  end
  