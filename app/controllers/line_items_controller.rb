class LineItemsController < ApplicationController
  include CurrentCart
   before_action :set_line_item, only: [:show, :edit, :update, :destroy]
   before_action :set_cart, only: [:create]

  def index
    @line_items = LineItem.all
  end

  def show
  end

  def new
    @line_item = LineItem.new
  end

  def edit
  end

  def create
    item = Item.find(params[:item_id])
    @line_item = @cart.add_item(item)

    respond_to do |format|
      if @line_item.save
        format.html { redirect_to @line_item.cart, notice: 'Item Added to Cart' }
        format.json { render :show, status: :created, location: @line_item }
      else
        format.html { render :new }
        format.json { render json: @line_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @line_item.update(line_item_params)
        format.html { redirect_to @line_item, notice: 'Successfully Updated' }
        format.json { render :show, status: :ok, location: @line_item }
      else
        format.html { render :edit }
        format.json { render json: @line_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @cart = Cart.find(session[:cart_id])
    @line_item.destroy
    respond_to do |format|
      format.html { redirect_to cart_path(@cart), notice: 'Your Item Has Been Removed' }
      format.json { head :no_content }
    end
  end

  private

   def set_line_item
     @line_item = LineItem.find(params[:id])
   end

   def line_item_params
     params.require(:line_item).permit(:item_id)
   end
end
