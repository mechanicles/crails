class OrdersController < InheritedResources::Base

  def index
    @orders = Order.includes(:product, :user).all
    @products = Product.all
    @users = User.all
    super
  end

  def new
    @users = User.all
    @products = Product.all
    super
  end

  private

    def order_params
      params.require(:order).permit(:user_id, :product_id)
    end
end

