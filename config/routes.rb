Rails.application.routes.draw do
  root to: "questions#index"

  resources :questions, :except => [:edit] do
    resources :votes, :except => [:edit, :index, :destroy, :show, :new]
  end
end
