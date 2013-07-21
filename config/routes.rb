Ogre::Application.routes.draw do
  resources :teaching_assistants, only: [:new, :create]
  root to: 'teaching_assistants#new'
end
