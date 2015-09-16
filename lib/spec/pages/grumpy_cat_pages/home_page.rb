require 'spec/pages/generic_page'

class HomePage < GenericPage

	def initialize
		super
	end

	def blah
		search_box = @driver.text_field(id: 'lst-ib').set "google"
	end

	def search(term)
		search_box.set(term)
	end

end