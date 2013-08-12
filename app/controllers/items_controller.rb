class ItemsController < ApplicationController
  def index
    @upload_token = Qiniu::RS.generate_upload_token :scope => 'spec-test',
      :callback_url       => items_url,
      :escape => 1,
      :callback_body => 'w=$(imageInfo.width)&h=$(imageInfo.height)&exif=$(exif)&u=$(endUser)&custom_field_1=$(x:custom_field_1)',
      :callback_body_type   => 'application/x-www-form-urlencoded',
      :customer           =>'huobazi'
  end

  def create
  end
end
