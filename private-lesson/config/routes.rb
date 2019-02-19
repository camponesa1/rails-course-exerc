Rails.application.routes.draw do
  devise_for :students
  resources :lessons
  
  get '/teacher/lessons' => 'teacher_lesson#index'
  put '/teacher/lessons/:id/' => 'teacher_lessons#schedule', as: :schedule
  put '/teacher/lessons/:id/given' => 'teacher_lessons#given', as: :given
  
  
  
  
  root 'home#index'
  
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
