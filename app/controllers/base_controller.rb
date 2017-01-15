class BaseController < ApplicationController
  include Doorkeeper::Rails::Helpers

  private

  def current_resource_owner
    User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
  end

  def head(status)
    render json: { status: status }, status: status
  end
end
