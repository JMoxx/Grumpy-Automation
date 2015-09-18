require 'spec/pages/generic_page'

class SightingsPage < GenericPage

	attr_reader :sightings_table

	def initialize
		super
		@sightings_table = table_element('class', 'table table-condensed table-hover')
	end

	def sightings_list?
		sightings_table.wait_until_present
		sightings_table.visible?
	end
end