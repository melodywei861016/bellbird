Rails.application.routes.draw do
  get 'alarm/index'

  get 'alarm/create'

  resources :alarms do
    member do
      put :upvote, to:'alarm#upvote'
    end
  end
  root 'alarm#index'
end
