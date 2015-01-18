Aberrant::Application.routes.draw do
  resources :organizations

  root "static_pages#home"
  resources :characters
  resources :characters do
  	resources :organizations
  end
  resources :powers
  resources :characters_organizations, only: [:create, :destroy]

end
