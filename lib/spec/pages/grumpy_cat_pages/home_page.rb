require 'spec/pages/generic_page'
require 'spec/pages/grumpy_cat_pages/sightings_page'

class HomePage < GenericPage

	attr_reader :sightings_link

	def initialize
		super
		@sightings_link = link_element('href', '/sightings')
	end

	def view_sightings
		sightings_link.click
		return SightingsPage.new
	end
end