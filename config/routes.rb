Rails.application.routes.draw do
  devise_for :admin, controllers: {
      sessions: 'admin/sessions',
      #registrations: 'admin/registrations',
      passwords: 'admin/passwords'
  }
  devise_for :members, controllers: {
      sessions: 'member/sessions',
      registrations: 'member/registrations',
      passwords: 'member/passwords'
  }

  namespace :admin do
      get '/' => 'tops#top'
      resources :members, only: [:index,:show,:edit,:update]
      resources :genres, only: [:index,:create,:update,:destroy]
      resources :spots
  end

  namespace :member, path:'' do
      get '/members/unsubscribe' => 'members#unsubscribe'
      patch '/members/:id/withdraw' => 'members#withdraw'
      resources :members, only: [:index,:show,:edit,:update]
      get 'spots/about' => 'spots#about'
      resources :spots
      resources :comments, only: [:edit,:update,:create,:destroy]
  end

  root to: 'member/spots#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
