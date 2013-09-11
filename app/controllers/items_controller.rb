class ItemsController < ApplicationController
  def index
  end

  def create
    # TODO save the item, you can use a active_record object
    item = {}
    item[:id] = 1
    item[:image] = 'http://your-bucket-name.qiniudn.com' + params[:key]
    render json: item
  end

end
