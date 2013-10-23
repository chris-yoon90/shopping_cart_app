class StoreController < ApplicationController
  def index
  	@num_visit = count_num_visit
  	@products = Product.order(:title)
  end
end
