Rails.application.routes.draw do

  devise_for :users,skip: [:passwords,], controllers: {
   registrations: "user/registrations",
   sessions: 'user/sessions'
 }

  namespace :user do
   root to: 'homes#index'
  end



  devise_for :admin,skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }


end
