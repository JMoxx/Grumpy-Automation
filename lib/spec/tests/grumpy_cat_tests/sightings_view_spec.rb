require 'spec/spec_helper'

#Pages
require 'spec/pages/grumpy_cat_pages/home_page'

describe "Sightings view Test" do

  before(:each) do
  	@page = HomePage.new
  end

  it "should display a list of Grumpy cat sightings" do
  	sightings_page = @page.view_sightings
  	expect(sightings_page.sightings_list?).to be true
  end
end