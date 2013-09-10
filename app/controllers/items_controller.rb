class ItemsController < ApplicationController
  def index
  end

  def create
    # do save the item
    render json: params
  end

end
