Rails.application.routes.draw do
  # root "articles#index"
  get '/purchase', to: 'purchases#process_loyalty_request'
end
