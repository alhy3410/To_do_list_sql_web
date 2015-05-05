require('spec_helper')
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('adding a new list', {:type => :feature}) do
  it('allows a user to click a list to see the task and details for it') do
    visit('/')
    click_link('Add New List')
    fill_in('name',:with  => 'Garden')
    click_button('Add List')
    expect(page).to have_content('Success!')
  end
end
