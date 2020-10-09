Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  #admin
  devise_for :admins, controllers: {
    sessions: 'admin/devise/sessions',
    passwords: "admin/devise/passwords",
    registrations: "admin/devise/registrations",
  }




  #customer
  devise_for :customers, controllers: {
    sessions: 'customer/devise/sessions',
    passwords: "customer/devise/passwords",
    registrations: "customer/devise/registrations",
  }




  #customer
  root 'customer/homes#top'
  get 'homes/about' => 'customer/homes#about', as: 'about'
  get 'homes/party' => 'customer/homes#party', as: 'party'
  get 'homes/wedding' => 'customer/homes#wedding', as: 'wedding'
  get 'homes/hygiene' => 'customer/homes#hygiene', as: 'hygiene'


  scope module: :customer do
    resources :reservations, only: [:new, :index, :create, :destroy]
    resources :topics, only: [:index, :show] do
      resource :favorites, only: [:create, :destroy]
      resources :comments, only: [:create, :destroy]
    end
  end




  #admin
  get 'admins/home/top' => 'admin/homes#top', as: 'admin_top'


  namespace :admin do
    resources :topics, only: [:new, :index, :show, :edit, :create, :update, :destroy]
    resources :inquiries, only: [:index, :show]
    resources :reservations, only: [:index, :show]
  end


end