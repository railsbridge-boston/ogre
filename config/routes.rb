Ogre::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :teaching_assistants, only: [:new, :create]
  root to: 'teaching_assistants#new'
end
