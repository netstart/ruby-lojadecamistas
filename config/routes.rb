Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post "/produtos" => "produtos/#create"

  get "/produtos/new" => "produtos#new"

  get "/produtos/:id/remove" => "produtos#destroy"

  get "/produtos" => "produtos#index" #default não precisaria definir esta rota

  root "produtos#index"
end
