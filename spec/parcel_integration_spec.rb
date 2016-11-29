require('./app')
require('capybara/rspec')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the parcel path', {:type => :feature}) do
  it('processes the user information and returns the total cost') do
    visit('/')
      fill_in('height', :with => 12)
      fill_in('width', :with => 15)
      fill_in('length', :with => 16)
      fill_in('miles', :with => 1000)
      select('Snails Pace', :from => 'user_choice')
      click_button('Find Out Your Price')
    expect(page).to have_content("Your total shipping cost is: 57650.00")
  end
end
