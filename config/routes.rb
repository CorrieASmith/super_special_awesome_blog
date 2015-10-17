Rails.application.routes.draw do
  resources :posts do
    resources :contents
  end
end
