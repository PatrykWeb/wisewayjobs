Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  get 'category_jobs/new' => 'category_jobs#new'
  post 'category_jobs/new' => 'category_jobs#create'
  get 'category_jobs/index' => 'category_jobs#_index'
  get 'job_offers/search' => 'job_offers#_search'
  get 'job_offers/index/:id' => 'job_offers#index', as: :job_offers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
