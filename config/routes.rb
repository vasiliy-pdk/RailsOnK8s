Rails.application.routes.draw do
  root to: 'current_time#index'
  get 'current_time/index'
end
