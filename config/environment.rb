# This is an _environment variable_ that is used by some of the Rake tasks to determine
# if our application is running locally in development, in a test environment, or in production
ENV['RACK_ENV'] ||= "development"

# Require in Gems
require 'bundler/setup'
Bundler.require(:default, ENV['RACK_ENV'])

# Require in all files in 'app' directory
require_all 'app'

# Reload pry
def reload
  # iterate over all files in 'app/models' and load them all (to get new code)
  Dir.glob('app/models/*').each do |file_name|
   load file_name
  end
  puts "all files in app/models/ reloaded"
end