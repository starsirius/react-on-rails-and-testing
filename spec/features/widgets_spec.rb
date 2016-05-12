require 'rails_helper'

RSpec.feature 'Widget management', type: :feature do
  scenario 'User creates a new widget' do
    visit '/widgets/new'
    fill_in 'Name', with: 'My Widget'
    click_button 'Save'
    expect(page).to have_content('Widget was successfully created.')
  end

  scenario 'User requests widgets suggestion', js: true do
    visit '/widgets/new'
    click_link 'Suggest'
    expect(page).to have_content('Screwdriver, Brush, Hammer, Knife')
  end
end
