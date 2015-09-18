require 'spec/spec_helper'

# Pages
require 'spec/pages/grumpy_cat_pages/home_page'

describe "Add sightings test" do

  before(:all) do
  	@location = ('a'..'z').to_a.shuffle[0,8].join
  	@comment = ('a'..'z').to_a.shuffle[0,8].join
  	@page = HomePage.new.add_sighting
  end

  it "should navigate to new sightings page" do
  	expect(@page.get_current_url).to include "/sightings/new"
  end

  it "should update sightings list with new sighting" do
  	@page.location.wait_until_present
  	sightings_page = @page.enter_sighting_info(@location, @comment)

  	new_entry_location = sightings_page.first_row_first_col.text
  	new_entry_comment = sightings_page.first_row_fifth_col.text
  	
  	expect(new_entry_location).to include @location
  	expect(new_entry_comment).to include @comment
  end
end