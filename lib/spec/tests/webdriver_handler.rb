class WebDriverHandler

	def initialize(args)
		@site        = args[:site]
		@browser 		 = args[:browser]
		@environment = args[:environment]
		@driver 		 = create_webdriver
	end

	def create_webdriver
    case ENV['BROWSER'].to_sym
      when :chrome
        driver = Watir::Browser.new browser
      when :firefox
        driver = Watir::Browser.new browser
      when :ie
        driver = Watir::Browser.new browser
    end
    $driver.window.maximize
  end

  def quit_webdriver
    $driver.quit
  end

end