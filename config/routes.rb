ADA::Application.routes.draw do
  root to: 'course_admins#index'
  resources :course_admins
  #root to: :course_admins
end