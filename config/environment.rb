# Load the Rails application.
require_relative "application"

# Load environment variables
common_path = "#{Rails.root}/config/environments/variables"
# Default variables
APP_CONFIG = YAML.load(
  ERB.new(File.new("#{common_path}/default_config.yml").read).result
) || {}
# Specific environment variables
env_config_path = "#{common_path}/#{Rails.env}_config.yml"
if File.file?(env_config_path)
  env_config = YAML.load(ERB.new(File.new(env_config_path).read).result)
  APP_CONFIG.merge!(env_config) unless env_config.nil?
end

# Initialize the Rails application.
Rails.application.initialize!
