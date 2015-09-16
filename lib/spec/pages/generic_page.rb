class GenericPage

	attr_reader :driver

	def initialize
		@driver = $test.web_driver.driver
	end
end