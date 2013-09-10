module ApplicationHelper
  def qiniu_uploader_form(options = {}, &block)
    uploader = QiniuUploader.new(options)
    form_tag(uploader.action, uploader.form_options) do
      uploader.fields.map do |name, value|
        hidden_field_tag(name, value)
      end.join.html_safe + capture(&block)
    end
  end

  class QiniuUploader
    def initialize(options)
      @options = options.reverse_merge(
        expires_in: 360,
        ssl: false,
        store_path: '/uploads/',
        custom_fields: {},
        callback_method: "POST"
      )
    end

    def form_options
      {
        id: @options[:id],
        class: @options[:class],
        method: "post",
        authenticity_token: false,
        multipart: true,
        data: {
          store_path: @options[:store_path],
          callback_url: @options[:callback_url],
          callback_method: @options[:callback_method]
        }.reverse_merge(@options[:data] || {})
      }
    end

    def fields
      custom_hidden_fields = {}
      @options[:custom_fields].each do |key,value|
        custom_hidden_fields["x:#{key}"] = value
      end
      {
        key: @options[:key] || default_key,
        token: @options[:token] || token
      }.reverse_merge custom_hidden_fields
    end

    def default_key
      "{timestamp}-{unique-id}-#{SecureRandom.hex}-${filename}"
    end

    def action
      @options[:action] || "http#{@options[:ssl] ? 's' : ''}://up.qiniu.com/"
    end

    def return_body
      custom_fields = {}
      @options[:custom_fields].each do |key,value|
        custom_fields[key] = "$(x:#{key})"
      end
      @options[:return_body].reverse_merge custom_fields
    end

    def token
      Qiniu::RS.generate_upload_token scope: @options[:bucket],
        escape: 1,
        expires_in: @options[:expires_in],
        return_body: @options[:return_body],
        customer: @options[:customer]
    end

  end
end
