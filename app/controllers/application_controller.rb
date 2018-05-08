class ApplicationController < ActionController::API
  include Response
  include Knock::Authenticable
  include ActionController::HttpAuthentication::Token::ControllerMethods
  # caches_page :index, :show
  # skip_before_action :verify_authenticity_token, :only => [:index, :show]

  rescue_from ActiveRecord::RecordNotFound do |exception|
    json_response({ message: exception.message }, :not_found)
    #error 404
  end

  rescue_from ActiveRecord::RecordInvalid do |exception|
    json_response({ message: exception.message }, :unprocessable_entity) #error 422
  end

protected
# Method for checking if current_user is admin or not.
  def authorize_as_admin
    return_unauthorized unless !current_user.nil? && current_user.is_admin?
  end

end
