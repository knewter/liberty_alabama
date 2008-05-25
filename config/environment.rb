RAILS_GEM_VERSION = '2.0.2' unless defined? RAILS_GEM_VERSION
require File.join(File.dirname(__FILE__), 'boot')
require File.join(File.dirname(__FILE__), '../vendor/plugins/engines/boot')

Rails::Initializer.run do |config|
  #resource_hacks required here to ensure routes like /:login_slug work
  config.plugins = [:engines, :community_engine, :white_list, :all]
  config.plugin_paths += ["#{RAILS_ROOT}/vendor/plugins/community_engine/engine_plugins"]
  
  config.action_controller.session = {
    :session_key => '_liberty_alabama_session',
    :secret      => '24f825d618dc73831b98f4126a3bec421cf6c38e2c8a8698d5ade9d969a80ad1bef2367bf356c7497e9d017bab178f971a52127afdf0da7afad183d8224da597'
  }
end
# Include your application configuration below
require "#{RAILS_ROOT}/vendor/plugins/community_engine/engine_config/boot.rb"
