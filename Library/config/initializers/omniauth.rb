Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :twitter, 'CONSUMER_KEY', 'CONSUMER_SECRET'
  provider :facebook, '451688864868792', 'b9d7060327ffcd06592f7033a05fb860'
  #provider :linked_in, 'CONSUMER_KEY', 'CONSUMER_SECRET'
end