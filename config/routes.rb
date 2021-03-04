Rails.application.routes.draw do
  resources :families, :caregivers, :children
  get 'families/within-distance/:distance', to: 'families#within_distance'
end
