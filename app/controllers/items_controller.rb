class ItemsController < ApplicationController
  def index
    @upload_token = Qiniu::RS.generate_upload_token :scope => 'spec-test',
      :callback_url       => items_url,
      :callback_body      => 'a=1&key=$(etag)&size=$(fsize)&uid=$(endUser)',
      :customer           => ''
  end

  def create
  end
end
