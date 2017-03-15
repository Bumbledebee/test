Rails.application.routes.draw do
  resources :realtestresults
  resources :realtests
  resources :comments
  resources :testvalues
  resources :tests
  resources :features
  resources :platforms
  resources :applications, param: :fyberapplicationid
  resources :publishers, param: :fyberpublisherid
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
