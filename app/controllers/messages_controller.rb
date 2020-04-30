class MessagesController < ApplicationController
  def index
    @message = Message.all.order(created_at: :desc)
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def message_params
    params.require(:message).permit(:content,:image).merge(user_id: current_user.id)
    
  end
end

# requireは保存先、permitはカラム名