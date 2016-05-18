Rails.application.routes.draw do
  
  resources :to_do_lists do
    resources :todo_items
    member do
    		patch :complete
    	end
    end
  end

  root "to_do_lists#index"
end
