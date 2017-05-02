class ItemsController < ApplicationController

  def index
  end
  def create
    # TODO save the item, you can use a active_record object
    item                 = {}

    item[:id]            = 1
    item[:file_size]     = params[:fsize]
    item[:image]         = 'http://ftguv.ftghub.com/' + params[:key]
    item[:imageInfo]     = params[:imageInfo]
    item[:custom_fields] = params[:custom_fields]
    item[:xyz]           = params[:xyz]

    Rails.logger.debug item
    render json: item
  end

end
