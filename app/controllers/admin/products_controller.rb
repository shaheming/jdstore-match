class Admin::ProductsController < AdminController
  before_action :find_product, only: [:show,:destroy,:edit,:update]

	def index
		@products = Product.all
	end
	def new
		@product = Product.new
	end
	def show
	end
	def create
		@product = Product.new(product_params)
		if @product.save 
			redirect_to admin_products_path
		else
			render :new
		end

	end

	def edit
	end
	def update
		if @product.update(product_params)
			redirect_to admin_products_path
		else
			render :edit
		end
	end

	def destroy
		if @product.destroy
			redirect_to admin_products_path
		end
	end

private
  def find_product
    @product = Product.find_by_friendly_id(params[:id])
  end
	def product_params
		params.require(:product).permit(:title,:description,:quantity,:price,
			         :image,:show_on,:friendly_id,:group_ids => [])
	end
end
