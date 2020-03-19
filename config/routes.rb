Rails.application.routes.draw do
  get 'scores/index'
  post 'scores/new_score'

  root to: 'questions#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
