require 'rails_helper'

RSpec.feature 'Widget management', type: :feature do
  scenario 'User creates a new widget' do
    visit '/widgets/new'
    fill_in 'Name', with: 'My Widget'
    click_button 'Save'
    expect(page).to have_content('Widget was successfully created.')
  end
end
