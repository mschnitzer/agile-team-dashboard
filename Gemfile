source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.0'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
gem 'semantic-ui-sass', git: 'https://github.com/doabit/semantic-ui-sass.git'

gem 'coffee-rails', '~> 4.2'
gem 'uglifier', '>= 1.3.0'

gem 'therubyracer', platforms: :ruby

gem 'devise'

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'turbolinks', '~> 5'

gem 'jbuilder', '~> 2.5'

gem 'holidays'
gem 'kaminari'
gem 'slim'
gem 'slim-rails'

gem 'pundit'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :test do
  # for test coverage reports
  gem 'coveralls', require: false
  gem 'rainbow'
  gem 'simplecov', require: false
  # to ensure a clean state for testing
  gem 'database_cleaner', '>= 1.0.1'
  gem 'timecop'
  # to fake backend replies
  gem 'webmock', '>= 2.3.0'
  # for code quality checks
  gem 'flog', '> 4.1.0'
  # for mocking and stubbing
  gem 'mocha', '> 0.13.0', require: false
  # for testing common Rails functionality with simple one-liners
  gem 'shoulda-matchers', '~> 3.1'
  # To generate random data
  gem 'rantly'

end


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get
  # a debugger console
  gem 'byebug', platform: :mri
  # as testing framework
  gem 'rspec-rails', '~> 3.5.0'
  # for fixtures
  gem 'factory_girl_rails'
  # for mocking the backend
  gem 'vcr'
  # as alternative to the standard IRB shell
  gem 'pry', '>= 0.9.12'
  # for style checks
  gem 'rubocop', '~> 0.47.1', require: false
  # to generate random long strings
  gem 'faker'
  # as driver for capybara
  gem 'poltergeist'
  # to launch browser in test
  gem 'launchy'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %>
  # anywhere in the code.
  gem 'web-console', '>= 3.3.0'

  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running
  # in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
