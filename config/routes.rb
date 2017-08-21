Rails.application.routes.draw do

get 'carls/reporte'

	root  'carls#index'

  

 

  resources :carls
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  

 
end
