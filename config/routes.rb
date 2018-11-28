Rails.application.routes.draw do
  get 'main/premium'
  resources :inscritos
  get 'main/noticias'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "main#noticias"
  get 'main/sobre'
  get 'futebol' => 'sessions#futebol', as: 'sessions_futebol'
  get 'luta' => 'sessions#luta', as: 'sessions_luta'
  get 'volei' => 'sessions#volei', as: 'sessions_volei'
  get 'basquete' => 'sessionspremium#basquete', as: 'sessionspremium_basquete'
  get 'tenis' => 'sessionspremium#tenis', as: 'sessionspremium_tenis'
  get 'resultados' => 'sessionspremium#resultados', as: 'sessionspremium_resultados'
end
