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

  get "/:short_link" => "clips#short", as: :short_link_path
  post "/translate" => "clips#translate"
  post "/counter" => "call_to_actions#counter"
  post "/user/:user_id/clip/:id/archive" => "clips#archive", as: :archive_clip
  post "/user/:user_id/call_to_action/:id/archive" => "call_to_actions#archive", as: :archive_cta
  get "/user/:user_id/archived" => "users#archived", as: :user_archived_list
end
