Rails.application.routes.draw do
  devise_for :admin, :controllers => {
    :sessions => 'admin/sessions'
  }

#   devise_for :users
  #get '/', :to => 'homes#top'
  #root to: 'public/homes#top'
  #get 'home/about' => 'homes#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

    scope module: :public do
      get '/' => 'homes#top'
      get 'about' => 'homes#about'
    end

devise_for :user, :controllers => {
  :registrations => 'users/registrations',
  :sessions => 'users/sessions'
}

devise_scope :user do
  get "user/:id", :to => "users/registrations#detail"
  get "signup", :to => "users/registrations#new"
  get "login", :to => "users/sessions#new"
  get "logout", :to => "users/sessions#destroy"
end

#   get 'goods' => 'goods#index'
#   get 'users' => 'users#new'
#   get 'users' => 'users#show'
#   get 'users' => 'users#edit'
#   get 'genres' => 'genres#index'

    scope module: :users do
        resources :users
        resources :posts
        resources :goods
    end

    namespace :admin do
        resources :camp_facilities
        resources :genres
#   get 'camp_facilities' => 'camp_facilities#new'
#   get 'camp_facilities' => 'camp_facilities#show'
#   get 'camp_facilities' => 'camp_facilities#edit'
    end

    get '/favorite/:id/good', to: 'users/goods#favorite'
end