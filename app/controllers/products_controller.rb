class ProductsController < ApplicationController
	before_action :validate_search_key, only:[:search]

	def index
		@products = Product.all.paginate(:page => params[:page], :per_page => 12)
	end
	def show
		@product = Product.find(params[:id])
	end
	def add_to_cart
		@product = Product.find(params[:id])
		if !current_cart.products.include?(@product)
		current_cart.add_product_to_cart(@product)
		flash[:notice] = "Add to cart"
		else
		flash[:warning] = "#{@product.title} is already in cart"
		end
		redirect_to :back
	end

	def search
		if @query_string.present?
			search_result = Product.ransack(@search_criteria).result(:distinct=>true)
			@products = search_result.paginate(:page=>params[:page],:per_page => 12)
		end
	end

	protected

	def validate_search_key
		@query_string = params[:q].gsub(/\\|\'|\/|\?/, "") if params[:q].present?
		@search_criteria = search_criteria(@query_string)
	end

	def search_criteria(query_string)
		{:title_or_description_cont=>query_string}
	end
end


