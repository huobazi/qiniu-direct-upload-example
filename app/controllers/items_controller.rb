class ItemsController < ApplicationController
  def index
    @upload_token = Qiniu::RS.generate_upload_token :scope => 'spec-test',
      :callback_url       => items_url,
      :callback_body_type   => 'application/x-www-form-urlencoded',
      :callback_body => 'foo=bar&w=$(imageInfo.width)&h=$(imageInfo.height)&exif=$(exif)&u=$(endUser)',
      :customer           =>'xxx'
  end

  def create
  end
end
