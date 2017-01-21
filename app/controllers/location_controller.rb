class LocationsController < BaseController
  before_action :doorkeeper_authorize!

  def create
    loc = Location.create(lat: params[:lat], lng: params[:lng], user_id: current_resource_owner.id)
    render json: loc.to_json, status: 201
  end
end
