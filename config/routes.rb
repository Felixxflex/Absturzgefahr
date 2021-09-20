Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#  root to: 'pages#inprogress'
  root to: 'pages#boys'

 
  resources :contacts, only: [:new, :create]
  get "/contact", to: "contacts#create", as: "contact"
  # get "/contact/create", to: "contacts#create", as: "contactnew"

  get "/services", to: "pages#services", as: "services"
  get "/aboutus", to: "pages#aboutus", as: "aboutus"
  
  get "/concerts", to: "pages#concerts", as: "concerts"
  get "/festivals", to: "pages#festivals", as: "festivals"
  get "/inprogress", to: "pages#inprogress", as: "inprogress"
  get "/privatevent", to: "pages#privatevent", as: "privatevent"
  get "/soccer", to: "pages#soccer", as: "soccer"
  get "/vip", to: "pages#vip", as: "vip"
  get "/hostesservice", to: "pages#hostesservice", as: "hostesservice"

end
