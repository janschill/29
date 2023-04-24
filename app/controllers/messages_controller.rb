class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = current_user.messages.new(message_params)

    respond_to do |format|
      if @message.save
        format.turbo_stream
        format.html { redirect_to message_url(@message), notice: "Message was successfully sent." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private
    def message_params
      params.require(:message).permit(:content)
    end
end
