Rails.application.routes.draw do
  root to: 'posts#map'

  devise_for :users,
             path_names: { sign_up: 'register', sign_in: 'login', edit: 'profile', sign_out: 'logout' },
             controllers: { omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations' }

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end

  get 'posts/map'
  get '/character', to: 'users#character'
  get '/users/:id', to: 'users#show', as: 'user'
  get 'posts/allindex', to: 'posts#allindex'
  get 'posts/allindex', to: 'posts#allindex'
  get 'posts/search', to: 'posts#search'
  post '/users/edit', to: 'users#update'

  resources :maps, only: [:index]
  resources :posts
end
