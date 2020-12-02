Rails.application.routes.draw do
  resources :families
  get 'families/within-distance/:distance', to: 'families#within_distance'
  resources :caregivers
  resources :children
end
