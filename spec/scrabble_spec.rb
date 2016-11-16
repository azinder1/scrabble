require('rspec')
require('scrabble')
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the scrabble path', {:type => :feature}) do
  it('processes the user entry and returns the scrabble score') do
    visit('/')
    fill_in('scrabble', :with => 'hello')
    click_button('bogus')
    expect(page).to have_content(8)
  end
end

# describe('String#scrabble') do
#   it('returns scrabble score for a letter') do
#     expect("a".scrabble()).to(eq(1))
#   end
#   it('returns scrabble score for letters with different values') do
#     expect("b".scrabble()).to(eq(3))
#   end
#   it('returns word value') do
#     expect("scrabble".scrabble()).to(eq(14))
#   end
# end
