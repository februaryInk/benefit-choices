require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module WidespreadLandscaping
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    
    # override the default behavior for input fields that fail validation (that is,
    # wrapping the field with the error in a new div with the class "field-with-error").
    # instead, just add the class "field-error" to the offending field.
    config.action_view.field_error_proc = Proc.new do |html_tag, instance|
      class_attr_index = html_tag.index 'class="'
      
      if class_attr_index
        html_tag.insert class_attr_index + 7, 'field-error '
      else
        html_tag.insert html_tag.index('>'), ' class="field-error"'
      end
    end
    
    # use the custom form builder as the default rather than the built-in one.
    config.after_initialize do
      ActionView::Base.default_form_builder = FormsHelper::CustomFormBuilder
    end
    
    config.ADMIN_USERNAME = ENV['ADMIN_USERNAME'] || 'admin'
    config.ADMIN_PASSWORD = ENV['ADMIN_PASSWORD'] || 'password'
    
    config.paperclip_defaults = {
      path: ':class/:attachment/:id/:filename',
      storage: :s3,
      s3_credentials: {
        bucket:  ENV['S3_BUCKET_NAME'],
        access_key_id: ENV['AWS_ACCESS_KEY_ID'],
        secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
        s3_region: ENV['AWS_REGION']
      },
      s3_host_name: "s3-#{ENV['AWS_REGION']}.amazonaws.com"
    }
  end
end
