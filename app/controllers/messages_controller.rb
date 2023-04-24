class MessagesController < ApplicationController
  # before_action :set_room, only: %i[ new create ]

  def new
    @message = Message.new
  end

  def create
    @message = @current_user.messages.new(message_params)
    @message.save



    respond_to do |format|
      format.turbo_stream
    #   format.html { redirect_to  }
    end
  end

  private
    # def set_room
    #   @room = Room.find(params[:room_id])
    # end

    def message_params
      params.require(:message).permit(:content)
    end
end
