Rails.application.routes.draw do
  devise_for :users
  #ROTAS DOS RESULTADOS
  get    "/resultados"          => "resultados#index"    ,as: "resultados"
  post   "/resultados"          => "resultados#create"   ,as: ""
  get    "/resultados/:id/edit" => "resultados#edit"     ,as: "edit_resultado"
  get    "/resultados/:id"      => "resultados#show"     ,as: "resultado"
  patch  "/resultados/:id"      => "resultados#update"   ,as: ""
  put    "/resultados/:id"      => "resultados#update"   ,as: ""
  delete "/resultados/:id"      => "resultados#destroy"  ,as: ""
  get '/resultado/segredo' => 'resultados#new', as: 'new_resultado'
  #ROTAS DOS DIARIOS
  get    "/diarios"          => "diarios#index"    ,as: "diarios"
  post   "/diarios"          => "diarios#create"   ,as: ""
  get    "/diarios/:id/edit" => "diarios#edit"     ,as: "edit_diario"
  get    "/diarios/:id"      => "diarios#show"     ,as: "diario"
  patch  "/diarios/:id"      => "diarios#update"   ,as: ""
  put    "/diarios/:id"      => "diarios#update"   ,as: ""
  delete "/diarios/:id"      => "diarios#destroy"  ,as: ""
  get '/diario/novo' => 'diarios#new', as: 'new_diario'
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
