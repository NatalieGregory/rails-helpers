require 'spec_helper'

feature 'Managing People' do
  scenario 'User creates a person' do
    visit '/'
    click_on "Add New Person"
    fill_in "First name", with: "Joe"
    fill_in "Last name", with: "Johnson"
    fill_in "Date of birth", with: "2014-04-12"
    click_on "Create Person"
    expect(page).to have_content("Joe")
    expect(page).to have_content("Johnson")
    expect(page).to have_content("4/12/2014")

    click_on "Joe"
    expect(page).to have_content("Joe")
    expect(page).to have_content("Johnson")
    expect(page).to have_content("4/12/2014")
  end
end