Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users

  post "session/new", to: "session#new", as: 'new_session'
end
