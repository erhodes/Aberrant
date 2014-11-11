Aberrant::Application.routes.draw do
  resources :organizations

  root "static_pages#home"
  resources :characters
  resources :powers

end
