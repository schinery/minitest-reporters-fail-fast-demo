Rails.application.routes.draw do

  root "home#index"
  resources :users

  # Skip the registration route so that new users can"t sign up
  # NOTE: This may cause an inability to edit user details later, in which case
  # we can specify the exact routes we want to enable
  devise_for :users, :skip => :registration, :path => "",
    :path_names => { :sign_in => "login", :sign_out => "logout" }
end
