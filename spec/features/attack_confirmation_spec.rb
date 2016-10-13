require 'spec_helper'

feature 'Attack' do

  before do
    sign_in_and_play
    click_button "Attack Julio!"
  end

  scenario "expect confirmation of attack to player2 to be displayed" do
    expect(page).to have_text "You have attacked Julio.  They are very angry."
  end

  scenario "expect confirmation of attack to player1 to be displayed" do
    click_button "Attack Mike!"
    expect(page).to have_text "You have attacked Mike.  They are very angry."
  end
  
end
