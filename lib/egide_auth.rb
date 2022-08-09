module EgideAuth
  class << self
    def login(code)
      received_token = token(code)
      return unless received_token

      response = received_token.get('api/v1/me')
      user_info = response.parsed
      usuario(user_info)
    end

    def usuario(user_info)
      username = user_info['username']
      cpf = user_info['cpf']

      Usuario.find_or_create_by(cpf:) do |u|
        u.username = username
        u.email = user_info['email']
        u.matricula = user_info['matricula']
        u.cpf = user_info['cpf']
        u.active = user_info['ativo']
      end
    end

    def client
      @client ||= OAuth2::Client.new(ENV['EGIDE_CLIENT_ID'], ENV['EGIDE_CLIENT_SECRET'], site: ENV['EGIDE_BASE_URL'])
    end

    def authorize_url
      client.auth_code.authorize_url(redirect_uri: ENV['EGIDE_REDIRECT_URL'])
    end

    def token(code)
      client.auth_code.get_token(code, redirect_uri: ENV['EGIDE_REDIRECT_URL']) if code
    end

    def signout_url
      "#{ENV['EGIDE_BASE_URL']}/logout"
    end
  end
end
