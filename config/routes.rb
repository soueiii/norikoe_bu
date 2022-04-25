Rails.application.routes.draw do

  devise_for :users,skip: [:passwords,], controllers: {
   registrations: "user/registrations",
   sessions: 'user/sessions'
 }

 devise_for :admin,skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
 }

  namespace :user do
   resources :counselings, only: [:create, :destroy, :edit, :new, :show, :update]
   resources :customers, only: [:show, :edit, :update]
   root to: 'homes#index'
   get 'customers/:id/confirm' => 'customers#confirm', as: 'confirm'
   patch 'customer/:id/unsubscribe' =>'customers#unsubscribe', as: 'unsubscribe'
  end

end
