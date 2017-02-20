Rails.application.routes.draw do
  root to: "questions#index"

  resources :questions, :except => [:show] do
    resources :comments, :except => [:show, :index]
  end
end
