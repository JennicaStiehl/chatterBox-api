class Api::V1::MessagesController < ApplicationController

  def create
    room = Room.find(params["room"])
    user = User.find(params["user"])

    message = Message.create(
      content: params["content"],
      user: user,
      room: room
      )
      
    if message.save
      render json: message
    else
      render json: {status: "406",
      body: {
        "error": "Unable to create your message."
        }}
      end
  end

  private
  def message_params
    params.permit(:content)
  end
end
