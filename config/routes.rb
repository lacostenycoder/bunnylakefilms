Rails.application.routes.draw do

  devise_for :users

  get '/admin' => 'admin/works#index'

  namespace :admin do
    resources :work_statuses
    resources :works do
      post :update_row_order, on: :member
    end
    resources :categories do
      post :update_row_order, on: :member
    end
    resources :clients
    resources :users
  end

  resources :categories do
    resources :works
  end

  resources :work_statuses do
    resources :works
  end

  resources :work_statuses, only: [:index, :show]

  resources :works, only: [:index, :show]

  get '/portfolio' => 'base#portfolio'
  get '/team' => 'base#team'
  get '/about' => 'base#about'
  get '/contact' => 'base#contact'

  root 'base#index'

  get '*path' => redirect('/')  if Rails.env == 'production'

end
