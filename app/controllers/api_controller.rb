class ApiController < ActionController::Base
  skip_before_action :verify_authenticity_token

  before_action :authenticate!

  attr_reader :current_user

  private

  def authenticate!
    authorization_header = request.headers['Authorization']
    authorization_header = authorization_header.split(' ').last if authorization_header

    begin
      decoded = JsonWebToken.decode(authorization_header)
      @current_user = Usuario.find(decoded[:user_id])

      logger.info "---- -- 🙂 Current User: #{@current_user.username} 👀 -- ----"
    rescue ActiveRecord::RecordNotFound => ex
      render json: { error: ex.message }, status: :unauthorized
    rescue JWT::DecodeError => ex
      render json: { error: ex.message }, status: :unauthorized
    end
  end
end
