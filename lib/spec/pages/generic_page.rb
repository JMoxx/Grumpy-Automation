class GenericPage

	attr_reader :driver

	def initialize
		@driver = $test.driver
	end

	def text_field_element(dom_type, dom_identity)
		@driver.text_field(dom_type.to_sym => dom_identity)
	end

	def link_element(dom_type, dom_identity)
		@driver.link(dom_type.to_sym => dom_identity)
	end

	def table_element(dom_type, dom_identity)
		@driver.table(dom_type.to_sym => dom_identity)
	end

	def button_element(dom_type, dom_identity)
		@driver.button(dom_type.to_sym => dom_identity)
	end

	def text_area_element(dom_type, dom_identity)
		@driver.textarea(dom_type.to_sym => dom_identity)
	end

	def html_element(dom_type, dom_identity)
		@driver.element(dom_type.to_sym => dom_identity)
	end

	def go_to_base_url
		@driver.goto base_url
		return HomePage.new
	end

	def get_current_url
		@driver.url
	end
end