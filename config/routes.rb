Rails.application.routes.draw do
  get 'main/premium'
  resources :inscritos
  get 'main/noticias'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "main#noticias"
  get 'main/diario'
  get 'main/sobre'
end
