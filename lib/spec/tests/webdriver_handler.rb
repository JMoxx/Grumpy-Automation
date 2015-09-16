class WebDriverHandler

	attr_reader :site, :browser, :environment, :driver

	def initialize(args)
		@site        = args[:site]
		@browser 		 = args[:browser]
		@environment = args[:environment]
		@driver 		 = create_webdriver
	end

	def navigate_to_starting_page
		@driver.goto 'google.com'
	end

	def maximize_window
		@driver.window.maximize
	end

	def quit_webdriver
		@driver.quit
	end

	private

		def create_webdriver
			case @browser
			when :chrome
				Watir::Browser.new @browser
			when :firefox
				Watir::Browser.new @browser
			when :ie
				Watir::Browser.new @browser
			end
		end
end