class LocationsController < ApplicationController

  def index
    country = params[:country]

    @locations = Location.search_country(country)
    json_response(@locations)
  end

  def show
    @location = Location.find(params[:id])
    json_response(@location)
  end

  def create
    @location = Location.create!(location_params)
    json_response(@location, :created)
  end

  def update
    @location = Location.find(params[:id])
    if @location.update!(location_params)
      render status: 200, json: {
       message: "Your location has been updated successfully."
       }
    end

  end

  def destroy
    @location = Location.find(params[:id])
    if @location.destroy!
      render status: 200, json: {
       message: "Your location was deleted.  Boom"
       }
    end

  end


private
  def location_params
    params.permit(:country, :city)
  end
end
