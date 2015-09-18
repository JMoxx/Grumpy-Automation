class WebDriverHandler

	attr_reader :site, :browser, :environment, :driver

	def initialize(args)
		@site        = args[:site]
		@browser 		 = args[:browser]
		@environment = args[:environment]
		@driver 		 = create_webdriver
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