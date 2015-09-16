require 'yaml'

class BaseTest

	attr_reader :web_driver

	def initialize(web_driver)
		yaml = YAML.load_file('lib/spec/resources/config.yaml')
  	@accounts = yaml['accounts']
  	@base_url = yaml['sites'][web_driver.site.to_s][web_driver.environment.to_s]
  	@web_driver = web_driver
	end

	def get_browser_specific_user(prefix)
		case using_browser
		when :firefox then get_account(prefix + "Firefox")
		when :chrome then get_account(prefix + "Chrome")
		when :internet_explorer then get_account(prefix + "IE")
		end
	end

	def get_specific_user(account)
		get_account(account)
	end

  def using_browser
  	web_driver.driver.browser
  end
end