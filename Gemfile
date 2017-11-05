source "https://rubygems.org"
source "https://rails-assets.org"

gem "coffee-rails", "~> 4.2"
gem "devise"
gem "draper"
gem "jquery-rails"
gem "jquery-ui-rails"
gem "kaminari"
gem "oj"
gem "pg", "~> 0.18"
gem "puma"
gem "rails-assets-moment"
gem "rails", "~> 5.0.0", ">= 5.0.2"

group :development, :test do
  gem "awesome_print"
  gem "byebug", platform: :mri # Call "byebug" anywhere in the code to stop execution and get a debugger console
  gem "factory_bot_rails" # Added here so fixtures get replaced
end

group :development do
  gem "guard-minitest"
  gem "guard" # NOTE: this is necessary in newer versions
  gem "listen", "~> 3.0.5"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "spring"
  gem "web-console"
end

group :test do
  gem "database_cleaner"
  gem "faker"
  gem "minitest-fail-fast"
  gem "minitest-rails"
  gem "minitest-reporters", "1.1.17"
  gem "mocha"
  gem "rails-controller-testing"
  gem "simplecov", :require => false
end
