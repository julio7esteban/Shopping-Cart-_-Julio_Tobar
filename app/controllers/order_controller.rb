class OrderController < ApplicationController
  def index
  	@order= Order.all
  end

  def edit
  end

  def new

  end
 

  def show
  	@order= Order.all
  end
end
