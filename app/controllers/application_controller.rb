class ApplicationController < ActionController::API
  def get_current_user
    jwt = request.headers['HTTP_AUTHORIZATION']

    if jwt
      user_info = Auth.decode(jwt)
      @user ||= User.find(user_info['user_id'])
    end

    @user
  end
end
