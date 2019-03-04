class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :delete]

  # GET /products
  def index
    @products = Product.all
    render json: @products.as_json
  end

  # GET /products/1
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  def create
    @product = Product.new(product_params)

    if @product.save
      render json: {success: true, location: url_for("/products/#{@product.id}")}
    else
      render :new
    end
  end

  # PUT /products/1
  def update
    if @product.update(product_params)
      render json: {success: true, location: url_for("/products/#{@product.id}")}
    else
      render :edit
    end
  end

  # DELETE /products/1
  def delete
    @product.destroy
    render json: {success: true}
  end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:title)
  end
end
