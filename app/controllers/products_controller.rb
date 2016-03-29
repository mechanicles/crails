class ProductsController < InheritedResources::Base

  def destroy
    expire_fragment(controller: 'orders', action: 'index')
    super
  end

  private

    def product_params
      params.require(:product).permit(:name, :amount)
    end
end

