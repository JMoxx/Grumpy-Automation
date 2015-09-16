# Gems
require 'watir-webdriver'

# Pages, tests, etc.
require 'spec/tests/browser_test'
require 'rspec/expectations'

RSpec.configure do |config|

  browser_test = WebDriverHandler.new(:site        => ENV['SITE'].to_sym,
                                      :browser     => ENV['BROWSER'].to_sym,
                                      :environment => ENV['ENVIRONMENT'].to_sym)

  config.before(:all) do
    profile = browser_test.webdriver_profile(dl_manager)
    browser_test.create_webdriver(profile)
    browser_test.navigate_to_starting_page
  end

  config.around(:each) do |example|
  end

  config.after(:all) do
    browser_test.quit_webdriver
  end

  config.filter_run_excluding :skip_test => true

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end