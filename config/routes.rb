Rails.application.routes.draw do
  root to: "questions#index"

  resources :questions, :except => [:show, :edit, :update] do
    resources :comments, :except => [:show, :index]
  end
end
