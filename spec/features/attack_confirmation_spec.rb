require 'spec_helper'

feature 'Attack' do

  before do
    sign_in_and_play
    click_button "Attack Julio!"
  end

  scenario "expect confirmation of attack to be displayed" do
    expect(page).to have_text "You have attacked Julio.  They are very angry."
  end

end
