class GoogleMapController < ApplicationController
  def index
    @lat = params[:lat] || "53.33844"
    @lon = params[:lon] || "-6.26626"
    @zoom = params[:zoom] || "10"
  end
end
