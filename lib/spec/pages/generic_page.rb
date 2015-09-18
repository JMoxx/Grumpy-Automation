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
end