require 'spec/pages/generic_page'
require 'spec/pages/grumpy_cat_pages/new_sightings_page'

class SightingsPage < GenericPage

	attr_reader :sightings_table, :add_sighting_button, :first_row_first_col, :first_row_fifth_col

	def initialize
		super
		@sightings_table = table_element('class', 'table table-condensed table-hover')
		@add_sighting_button = button_element('href', '/sightings/new')
		@first_row_first_col = html_element('css', 'body > div.container-fluid > table > tbody > tr:nth-child(1) > td:nth-child(1)')
		@first_row_fifth_col = html_element('css', 'body > div.container-fluid > table > tbody > tr:nth-child(1) > td:nth-child(5)')
	end

	def add_sighting
		add_sighting_button.click
		return NewSightingsPage.new
	end

	def sightings_list?
		sightings_table.wait_until_present
		sightings_table.visible?
	end

	def retreive_first_row_info
		arr = [sightings_table[0][0], sightings_table[0][4]]
	end
end