require 'app'
require 'spec_helper'

feature 'Battle' do

  before do
    visit "/"
    fill_in "p1_name", :with => 'Mike'
    fill_in "p2_name", :with => 'Julio'
    click_button "Enter Battle!!"
  end

  scenario "expect names to be submitted and displayed" do
    expect(page).to have_text "Mike"
    expect(page).to have_text "Julio"
  end

  scenario "expect players hit points to be displayed" do
    expect(page).to have_text "100"
  end

end
