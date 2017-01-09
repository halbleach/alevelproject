Rails.application.routes.draw do

  devise_for :users
  scope "/admin" do
  	resources :users
  end
  root to: "lessons#index"

  resources :roles
  resources :users
  resources :lessons
  resources :students
  resources :demerits
  resources :merits
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
