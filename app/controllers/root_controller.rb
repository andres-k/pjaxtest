class RootController < ApplicationController

  def index
    if session[:basket_id]
      @basket = Basket.find session[:basket_id]
    else
      @basket = Basket.create
      session[:basket_id] = @basket.id
    end
    @products = Product.find :all
  end
end
