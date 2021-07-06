Rails.application.routes.draw do
  get "/students", to: "students#index", as: "students"
  get "/student/:id", to: "students#show", as: "student"
  get "/student/:id/activate", to: "students#activate", as: "activate_student"
end
