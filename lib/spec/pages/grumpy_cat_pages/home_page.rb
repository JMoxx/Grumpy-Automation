require 'spec/pages/generic_page'
require 'spec/pages/grumpy_cat_pages/sightings_page'
require 'spec/pages/grumpy_cat_pages/new_sightings_page'

class HomePage < GenericPage

	attr_reader :sightings_link, :add_sighting_button

	def initialize
		super
		@sightings_link = link_element('href', '/sightings')
		@add_sighting_button = link_element('href', '/sightings/new')
	end

	def view_sightings
		sightings_link.click
		return SightingsPage.new
	end

	def add_sighting
		add_sighting_button.click
		return NewSightingsPage.new
	end
end