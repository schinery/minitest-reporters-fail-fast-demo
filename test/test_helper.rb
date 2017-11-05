require "simplecov"

SimpleCov.start "rails" do
  add_filter "/channels/" # Add if channels added
  add_filter "/jobs/" # Add if jobs added
  add_filter "/mailers/" # Add if mailers added
end

ENV["RAILS_ENV"] ||= "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"

# Make sure require "minitest/reporters" is before require "minitest/rails"
require "minitest/reporters"
Minitest::Reporters.use!(
  Minitest::Reporters::SpecReporter.new,
  ENV,
  Minitest.backtrace_filter
)

require "minitest/fail_fast"
require "minitest/rails"
require "mocha/mini_test"
require "oj"

class ActiveSupport::TestCase
  include FactoryBot::Syntax::Methods
  include Devise::Test::IntegrationHelpers

  # Set Faker to UK locale (and UK postcodes)
  Faker::Config.locale = "en-GB"

  # Set Databasecleaner strategy
  DatabaseCleaner.strategy = :transaction
  DatabaseCleaner.clean_with(:deletion)

  before do
    DatabaseCleaner.start
  end

  after do
    DatabaseCleaner.clean
  end
end
