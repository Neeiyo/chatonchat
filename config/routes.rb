Rails.application.routes.draw do
  devise_for :users
  resources :items, :path => "ma_photo"
  resources :carts, :path => "mon_panier"
  resources :orders, :path => "ma_commande"
  resources :users, :path => "utilisateur"
  root to: "items#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
