class SessionsController < ApplicationController
  def create
    user = User.where(
        :uid => omniauth_uid,
        :provider => omniauth_provider
        ).first_or_initialize
    user.token_data = request.env['omniauth.auth']
    user.save
    session[:user_id] = user.id
    redirect_to user_path(user.id)
  end

end
