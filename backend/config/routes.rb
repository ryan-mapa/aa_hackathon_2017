Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    resources :users, only: %i(create show)
    resource :session, only: %i(create destroy)
    resources :classrooms, only: %i(create show index)
    resources :enrollments, only: %i(create)
    resources :groups, only: %i(create show index)
    resources :memberships, only: %i(create)
    resources :assignments, only: %i(create show index)
    resources :tasks, only: %i(create index)
  end
end
