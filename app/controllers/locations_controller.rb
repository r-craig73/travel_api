class LocationsController < ApplicationController

  def index
    @locations = {"location": "Paris"}
    json_response(@locations)
  end

  private
  def json_response(object)
    render json: object, status: :ok
  end
end
