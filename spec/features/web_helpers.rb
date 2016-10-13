# require 'app'
# require 'index'

def sign_in_and_play
  visit "/"
  fill_in "p1_name", :with => 'Mike'
  fill_in "p2_name", :with => 'Julio'
  click_button "Enter Battle!!"
end
