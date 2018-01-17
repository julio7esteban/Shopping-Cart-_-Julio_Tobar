class ProductsController < ApplicationController
  def index
    @products = Product.where(:user_id => current_user.id)
    @categoria = Category.all
  end

  def new
    @product = Product.new
    @categories = Category.all
  end

  def create
    @product = current_user.products.new(product_params)
     @product.categories=params[:categories]
    if @product.save
      redirect_to products_path
    else
      render 'new'
    end
  end

  def show

  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      redirect_to products_path
    else
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    @category = Category.find(params[:product_id])
    @category.destroy
    
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:title, :price,:cantidad,:cover,:category)
  end
end
