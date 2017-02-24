Capybara.default_max_wait_time = 6
Capybara.save_path = Rails.root.join('tmp', 'capybara')

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, :phantomjs => Phantomjs.path, debug: false, timeout: 30)
end

Capybara.register_driver :rack_test do |app|
  Capybara::RackTest::Driver.new(app, headers: {'HTTP_ACCEPT' => 'text/html'})
end

Capybara.javascript_driver = :poltergeist
