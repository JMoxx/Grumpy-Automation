require 'spec/spec_helper'

#Pages
require 'spec/pages/grumpy_cat_pages/home_page'

describe "Grumpy Test" do

  before(:each) do
  	page = HomePage.new
  	page.blah
  end

  after(:each) do
  end

  it "Create Shot Product" do
  end
end