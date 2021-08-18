Rails.application.routes.draw do
  root to: "gardens#index"
  # As a user I can see a garden and its plants (show page)
  resources :gardens do
    # As a user I can add a plant in a garden
    resources :plants, only: [:create]
  end
  # As a user I can delete a plant
  resources :plants, only: [:destroy]
end
