Rails.application.routes.draw do
  get 'toll_booth_tracker/index'
  get 'toll_booth_tracker/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #

  get 'toll_booth_leader_board/vehicles_processed'
  get 'toll_booth_leader_board/charges_collected'

  resources :pass
  resources :vehicles
  resources :vehicle_pass
  resources :toll
  resources :toll_booth
  resources :toll_booth_leader_board
  resources :toll_booth_tracker, only: [:index, :show]
end
