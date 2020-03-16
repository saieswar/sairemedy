class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /products
  # GET /products.json
  def index
    @current_user = current_user
    @products = Product.all
    if params[:type].present?
      if params[:type] == "stone"
        @products = Product.all.where(product_type: "Stone")
      elsif params[:type] == "kanakanam"
        @products = Product.all.where(product_type: "Kanakanam")
      elsif params[:type] == "rudraksha"
        @products = Product.all.where(product_type: "Rudraksha")
      elsif params[:type] == "fengshui"
        @products = Product.all.where(product_type: "Fengshui")
      elsif params[:type] == "tantra"
        @products = Product.all.where(product_type: "Tantra")
      elsif params[:type] == "gems"
        @products = Product.all.where(product_type: "Gems")
      elsif params[:type] == "malas"
        @products = Product.all.where(product_type: "Malas")
      elsif params[:type] == "others"
        @products = Product.all.where(product_type: "Others")
      end
    end
  end

  # GET /products/1
  # GET /products/1.json
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
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def add_product_to_cart
    @product = Product.find_by(id: params[:id])
    @current_user = current_user
    if @product.present?
      @cart_data = @product.products_carts.create(user_id: @current_user.id, amount: @product.price, status: "Processing")
      redirect_to dashboard_index_path({type: "Cart"})
    else
    end
  end

  def products_carts
    @current_user = current_user
    if @current_user.role == "Admin"
      @products_carts = ProductsCart.all
    else
      @products_carts = @current_user.products_carts
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :description, :price, :unit_price, :image, :product_type)
    end
  end
