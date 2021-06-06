class Api::V1::RoomsController < ApplicationController

  def index
    rooms = Room.all
    render json: rooms
  end

  def create
    room = Room.new(room_params)
    if room.save
      render json: room
    else
      render json: {status: "406",
      body: {
        "error": "Unable to create your room."
        }}
      end
  end

  def update
    room = Room.find_by_title(params["name"])
    if room
      room.update!(room_params)
      render json: room
    else
      render json: {
        "error": "Room does not exist."
      }
    end
  end

  private
  def room_params
    params.permit(:name)
  end
end
