require 'spec_helper'

describe "StaticPages" do

    describe "Home page" do

    it "should have the content 'Inventory App'" do
      visit '/home'
      expect(page).to have_content('Inventory App')
    end
  end
end
