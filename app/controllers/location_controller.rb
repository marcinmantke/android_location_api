class LocationsController < BaseController
  def create
    loc = Location.create(lat: params[:lat], lng: params[:lng], user_id: params[:user_id])
    render json: loc.to_json, status: 201
  end
end
