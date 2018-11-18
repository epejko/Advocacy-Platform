Rails.application.config.middleware.use OmniAuth::Builder do 
    provider :google_oauth2, "642638828779-nafn79epmpkeh8a7nntd2nemmcj6cd4d.apps.googleusercontent.com", "3UNhRd3-17Yr51vKvoHxv61r"
end