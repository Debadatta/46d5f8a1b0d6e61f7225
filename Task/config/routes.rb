Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_scope :user do
	  get 'sign_in', to: 'devise/sessions#new'
	  post 'sign_out', to: 'devise/sessions#destroy'
  end
  
  #devise_for :users, 
         #:skip => [ :registrations ],
         #:controllers => { :sessions => "Sessions" },
         #:path_names => { :sign_in => 'login', :sign_out => 'logout' }
		 
		 root :to => 'public/index'

end
