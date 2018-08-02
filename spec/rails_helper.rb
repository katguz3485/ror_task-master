ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../config/environment', __dir__)
abort('The Rails environment is running in production mode!') if Rails.env.production?
require 'spec_helper'
require 'rspec/rails'
require 'faker'
require 'devise'
require 'capybara/rspec'
require 'capybara-screenshot/rspec'
require 'database_cleaner'
require 'shoulda-matchers'
require 'shoulda'


Dir[Rails.root.join('spec/support/**/*.rb')].sort.each {|f| require f}


ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
  config.include Capybara
  config.include Capybara::DSL
  config.include RSpec::Matchers
  config.include Features::SessionHelpers, type: :feature
  config.include Devise::Test::ControllerHelpers, type: :controller
  config.infer_spec_type_from_file_location!


  begin
    config.before(:suite) do
      DatabaseCleaner.clean_with(:truncation)
    end
    config.before(:each) do
      DatabaseCleaner.strategy = :transaction
    end
    config.before(:each, js: true) do
      DatabaseCleaner.strategy = :truncation
    end
    config.before(:each) do
      DatabaseCleaner.start
    end
    config.after(:each) do
      DatabaseCleaner.clean
    end
    config.before(:all) do
      DatabaseCleaner.start
    end
    config.after(:all) do
      DatabaseCleaner.clean
    end

    Shoulda::Matchers.configure do |config|
      config.integrate do |with|
        with.test_framework :rspec
        with.library :rails
      end
    end
  end
end
