Rails.application.routes.draw do
  devise_for :users, skip: [:passwords], controllers: {
    registrations: 'user/registrations',
    sessions: 'user/sessions'
  }

  devise_for :admin, skip: %i[registrations passwords], controllers: {
    sessions: 'admin/sessions'
  }

  namespace :admin do
    root to: 'homes#top'
    resources :answers, only: %i[show destroy]
    resources :users, only: %i[show update]
    resources :counselings, only: %i[show destroy]
  end

  namespace :user do
    get 'counselings/search' => 'counselings#search'
    resources :counselings, only: %i[create destroy edit new show update] do
      resources :answers, only: %i[create destroy]
    end
    resources :admins, only: [:index]
    resources :customers, only: %i[show edit update]
    get 'customers/:id/confirm' => 'customers#confirm', as: 'confirm'
    patch 'customer/:id/unsubscribe' => 'customers#unsubscribe', as: 'unsubscribe'
    post 'good/:id' => 'goods#create', as: 'create_good'
    delete 'good/:id' => 'goods#destroy', as: 'destroy_good'
    post 'not_good/:id' => 'not_goods#create', as: 'create_not_good'
    delete 'not_good/:id' => 'not_goods#destroy', as: 'destroy_not_good'
  end
  root to: 'user/homes#index'
  resources :contacts, only: %i[new create]
  get 'contacts/thanks' => 'contacts#thanks', as: 'thanks'
end
