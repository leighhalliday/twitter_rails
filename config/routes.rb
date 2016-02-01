Rails.application.routes.draw do
  resources :users do
    resources :tweets
  end

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
