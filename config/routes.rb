Rails.application.routes.draw do

	root 'attach_files#index'
  resources :attach_files
end
