Rails.application.routes.draw do
  get 'scores/index'

  root to: 'questions#index'
  post 'questions/novo_quiz'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
