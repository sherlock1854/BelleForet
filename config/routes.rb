Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  devise_for :admins, controllers: {
    sessions: 'admin/sessions'
  }


  devise_for :customers, controllers: {
    sessions: 'customer/sessions'
  }




  #customer
  root 'customer/homes#top'
  get 'homes/about' => 'customer/homes#about', as: 'about'
  get 'homes/party' => 'customer/homes#party', as: 'party'
  get 'homes/wedding' => 'customer/homes#wedding', as: 'wedding'


  #admin
  get 'admins/home/top' => 'admin/homes#top', as: 'admin_top'


end