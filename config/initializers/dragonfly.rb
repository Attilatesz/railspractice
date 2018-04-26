require 'dragonfly'

# Configure
Dragonfly.app.configure do
  plugin :imagemagick

  secret "816cb683ed452e5bcc2a92e825e71552bf47812270d650abb958bd12d61442e5"

  url_format "/media/:job/:name"

  datastore :file,
    root_path: Rails.root.join('public/system/dragonfly', Rails.env),
    server_root: Rails.root.join('public')
end

# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware

# Add model functionality
ActiveSupport.on_load(:active_record) do
  extend Dragonfly::Model
  extend Dragonfly::Model::Validations
end
