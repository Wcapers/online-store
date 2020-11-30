class CartsController < ApplicationController
  def destroy
    current_cart.destroy
    render :show
  end
end
