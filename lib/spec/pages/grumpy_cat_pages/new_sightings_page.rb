require 'spec/pages/generic_page'

class NewSightingsPage < GenericPage

	attr_reader :location, :timestamp, :mood, :comment, :submit_sighting

	def initialize
		super
		@location  = text_field_element('id', 'sighting_location')
		@comment   = text_area_element('id', 'sighting_comment')
		@submit_sighting = button_element('name', 'commit')
	end

	def enter_sighting_info(loc, com)
		location.set loc
		comment.set com
		submit_sighting.click
		return SightingsPage.new
	end
end