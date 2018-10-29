Rails.application.routes.draw do
  resources :inscritos
  get 'main/noticias'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "main#noticias"
  
end
