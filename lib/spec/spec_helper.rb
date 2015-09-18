# Gems
require 'watir-webdriver'

# Pages, tests, etc.
require 'spec/tests/browser_test'
require 'spec/tests/webdriver_handler'

RSpec.configure do |config|

  web_driver = WebDriverHandler.new(:site        => ENV['SITE'].to_sym,
                                    :browser     => ENV['BROWSER'].to_sym,
                                    :environment => ENV['ENVIRONMENT'].to_sym)

  config.before(:all) do
    $test = BrowserTest.new(web_driver)
    $test.maximize_window
    $test.navigate_to_starting_page
  end

  config.after(:all) do
    $test.quit_webdriver
  end

  config.filter_run_excluding :skip_test => true

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end