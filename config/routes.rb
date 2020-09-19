Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root to: "toppages#index"
  resources :ports do 
    member do
      resources :comments, only:[:create, :destroy] end
  end
  
  devise_for :admins, controllers: {
    registrations: 'admins/registrations',
    sessions: "admins/sessions",
  }
  
  devise_for :users, controllers: {
  sessions:      'users/sessions',
  registrations: 'users/registrations'
}
  
  resources :admins, only: [:show] do
    collection do
      get :comment_index end
  end

end