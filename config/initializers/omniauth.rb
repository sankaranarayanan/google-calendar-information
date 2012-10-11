Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['GOOGLE_KEY'], ENV['GOOGLE_SECRET'], {access_type: 'online', approval_prompt: '', :scope => 'userinfo.email, userinfo.profile, https://www.googleapis.com/auth/calendar'}
end
