Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, Rails.application.secrets.omniauth_provider_key, Rails.application.secrets.omniauth_provider_secret, :hd => Rails.application.secrets.domain_name
end
