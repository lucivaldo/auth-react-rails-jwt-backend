class AuthController < ApplicationController
  def new
    redirect_to EgideAuth.authorize_url, allow_other_host: true
  end

  def token
    usuario = EgideAuth.login(params[:code])
    
    if usuario
      payload = { user_id: usuario.id }
      token = JsonWebToken.encode(payload)

      render json: { token:, usuario: }
    else
      render json: { token: null, usuario: nil }
    end
  end

  def destroy
    redirect_to EgideAuth.signout_url, allow_other_host: true
  end
end
