Rails.application.routes.draw do
  get 'main/premium'
  resources :inscritos
  get 'main/noticias'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "main#noticias"
  get 'main/sobre'
  get 'sessions/futebol'
  get 'sessions/luta'
  get 'sessions/volei'
  get 'sessionspremium/basquete'
  get 'sessionspremium/tenis'
  get 'sessionspremium/resultados'
end
