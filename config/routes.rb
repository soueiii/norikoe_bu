Rails.application.routes.draw do

  devise_for :users,skip: [:passwords,], controllers: {
   registrations: "user/registrations",
   sessions: 'user/sessions'
 }

 devise_for :admin,skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
 }

  namespace :user do
   resources :counselings, only: [:create, :destroy, :edit, :new, :show, :update] do
    resources :answers, only: [:create, :destroy]
    end
   resources :customers, only: [:show, :edit, :update]
   root to: 'homes#index'
   get 'customers/:id/confirm' => 'customers#confirm', as: 'confirm'
   patch 'customer/:id/unsubscribe' =>'customers#unsubscribe', as: 'unsubscribe'
   post 'good/:id' => 'goods#create', as: 'create_good'
   delete 'good/:id' => 'goods#destroy', as: 'destroy_good'
   post 'not_good/:id' => 'not_goods#create', as: 'create_not_good'
   delete 'not_good/:id' => 'not_goods#destroy', as: 'destroy_not_good'

  end
end
