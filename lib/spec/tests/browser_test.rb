require 'spec/tests/base_test'

class BrowserTest < BaseTest

	attr_reader :driver

	def initialize(web_driver)
		@driver = web_driver.driver
		super(web_driver)
	end

	def navigate_to_starting_page
		@driver.goto base_url
	end

	def maximize_window
		@driver.window.maximize
	end

	def quit_webdriver
		@driver.quit
	end
end