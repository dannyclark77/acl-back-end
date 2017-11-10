# frozen_string_literal: true

Rails.application.routes.draw do
  resources :examples, except: %i[new edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: %i[index show]
  resources :workouts, except: %i[new edit]
  resources :exercises, only: %i[index show]
  resources :goals, only: %i[index show]
end
