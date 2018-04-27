Rails.application.routes.draw do
  devise_for :admins, controllers:  {
      sessions: "admins/sessions"
  }
  devise_scope :admin do
    get '/admins/sign_out', to: 'devise/sessions#destroy', as: :signout
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "projects#index"
  get "/apprentices.html.erb" => "projects#apprentices"
  get "/admins" => "admins#index"
  get "/index.html.erb" => "projects#index"
  get "/projects.html.erb" => "projects#projects"
  get "/teams.html.erb" => "projects#teams"
  resources :projects
  resources :teams
  resources :apprentices
end
