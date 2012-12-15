Sunray::Application.routes.draw do


  devise_for :admins,
    :controllers => {
      :sessions => "admins/sessions",
      :registrations => 'admins/registrations',
      :confirmations => 'admins/confirmations',
      :passwords => "admins/passwords",
      :unlocks => "admins/unlocks",
      :accounts => "admins/accounts"
  }


  devise_for :users, :controllers => { 
    registrations: 'devise/registrations', 
    :sessions => "devise/sessions", 
    :passwords => 'devise/passwords', 
    :confirmations => 'devise/confirmations' 
  }

  authenticate :admin do
    namespace :admins do
      #mount Resque::Server.new, at: '/resque'
      resources :dashboards
      resources :accounts
    end  
  match "/admins" => 'admins/dashboards#index', as: :admins_root
  end
  
  resources :documentparents do as_routes end
  resources :documents do as_routes end
  resources :documentparts do as_routes end  
  root to: 'pages#index'
end
