# QiniuDirectUploader Example

## How to run

This is a example for https://github.com/huobazi/qiniu_direct_uploader

Please see the files

```
config/initializers/qiniu.rb.example
app/views/items/index.html.erb
app/assets/javascripts/items.js.coffee
app/controllers/items_controller.rb
```

1. Clone the repo to your localhost
2. Rename the  config/initializers/qiniu.rb.example to config/initializers/qiniu.rb
3. Setup your Qiniu KEY to the config/initializers/qiniu.rb
4. Bundle install && Run
5. Upload a image
6. See the javascript console

see also:

1. http://docs.qiniu.com/api/v6/put.html#upload-without-callback
2. http://docs.qiniu.com/api/v6/put.html#upload-api
3. http://docs.qiniu.com/api/v6/put.html#uploadToken-returnBody

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
