Rails.application.routes.draw do
  get 'users/show'
  get 'users/following_port'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root to: "toppages#index"
  get "toppages/why", to: "toppages#why"
  
  
  resources :ports do 
    member do
      resources :comments, only:[:create, :destroy] end
  end
  
  devise_for :admins, controllers: {
    registrations: 'admins/registrations',
    sessions: "admins/sessions"
  }
  
  devise_for :users, controllers: {
  sessions:      'users/sessions',
  registrations: 'users/registrations'
}
  
  devise_scope :user do
    get 'users/sign_out' => "devise/sessions#destroy" end
    
  #devise_scope :admin do
    #get 'admins/sign_out' => "devise/sessions#destroy" end

  resources :admins, only: [:show] do
    collection do
      get :comment_index end
  end
  
  resources :users, only:[:show] do
    collection do
      get :following_port end
  end

  resources :relationships, only: [:create, :destroy]
end
