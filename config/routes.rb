Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#home"

  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks"}
  resources :users do 
      resources :brands do 
        resources :call_to_actions, except: [:new, :create]
      end 
      resources :clips
  		resources :call_to_actions, only: [:new, :create]
	end 

  get "/:short_link" => "clips#short"
  post "/translate" => "clips#translate"
end
