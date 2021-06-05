class Api::V1::RoomsController < ApplicationController

  def index
    render json: Rooms.all
  end

end
