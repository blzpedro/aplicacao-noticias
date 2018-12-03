Rails.application.routes.draw do
  devise_for :users
  resources :resultados
  resources :diarios
  get 'premium' => 'main#premium', as: 'main_premium' 
  get    "/inscritos"          => "inscritos#index"    ,as: "inscritos"
  post   "/inscritos"          => "inscritos#create"   ,as: ""
  get    "/inscritos/:id/edit" => "inscritos#edit"     ,as: "edit_inscrito"
  get    "/inscritos/:id"      => "inscritos#show"     ,as: "inscrito"
  patch  "/inscritos/:id"      => "inscritos#update"   ,as: ""
  put    "/inscritos/:id"      => "inscritos#update"   ,as: ""
  delete "/inscritos/:id"      => "inscritos#destroy"  ,as: ""
  get '/cadastro' => 'inscritos#new', as: 'new_inscrito'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "main#noticias"
  get 'sobre' => 'main#sobre', as: 'main_sobre'
  get 'futebol' => 'sessions#futebol', as: 'sessions_futebol'
  get 'luta' => 'sessions#luta', as: 'sessions_luta'
  get 'volei' => 'sessions#volei', as: 'sessions_volei'
  get 'basquete' => 'sessionspremium#basquete', as: 'sessionspremium_basquete'
  get 'tenis' => 'sessionspremium#tenis', as: 'sessionspremium_tenis'
  get 'resultados' => 'sessionspremium#resultados', as: 'sessionspremium_resultados'
end
