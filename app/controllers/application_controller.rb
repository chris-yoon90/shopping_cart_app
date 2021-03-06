class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
  	def current_cart
  		Cart.find(session[:cart_id])
  	rescue ActiveRecord::RecordNotFound
  		cart = Cart.create
  		session[:cart_id] = cart.id
  		cart
  	end

    def count_num_visit
      if session[:counter].nil?
        session[:counter] = 1
      else
        session[:counter] += 1
      end
    end

    def reset_num_visit
      session[:counter] = 0
    end

end
