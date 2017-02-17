Rails.application.routes.draw do
    devise_for :users

	root 'welcome#index'

	namespace :admin do
		resources :products
	end

	resources :products do
		member do
			post :add_to_cart
		end
	end

	resources :carts do
		collection do
			delete :clean
			post :checkout
		end
	end

	resources :cart_items

	resources :orders

  namespace :account do
		resources :orders
	end

    resources :seats
    resources :products do
      resources :seats do
        member do
          post :select
          post :cancel
      end
    end
  end

end
