class MainController < ApplicationController
  def index
    @manufacturers = Manufacturer.limit(3)
    @products = Product.limit(3)
  end
end
