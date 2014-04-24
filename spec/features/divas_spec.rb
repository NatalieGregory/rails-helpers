require 'spec_helper'

feature 'Managing Divas' do
  scenario 'User creates and edits and deletes a diva' do
    visit '/'
    click_on "Divas"
    click_on "Add New Diva"

    click_on "Create Diva"
    expect(page).to have_content("High note can't be blank")

    click_on "Create Diva"
    fill_in "High note", with: "C"
    expect(page).to have_content("High note isn't high enough")

    fill_in "Stage name", with: "Whitney Houston"
    fill_in "High note", with: "High C"
    check "Still singing"
    click_on "Create Diva"
    expect(page).to have_content("High C")
    expect(page).to have_content("Yes")

    click_on "Whitney Houston"
    expect(page).to have_content("High C")
    expect(page).to have_content("Still singing!")

    click_on "Edit"
    fill_in "High note", with: ""
    click_on "Update Diva"
    expect(page).to have_content("High note can't be blank")

    fill_in "High note", with: "High e"
    uncheck "Still singing"
    click_on "Update Diva"

    expect(page).to have_no_content("High C")
    expect(page).to have_no_content("Still singing!")

    expect(page).to have_content("High e")
    expect(page).to have_content("No longer singing")

    click_on "Delete"
    expect(page).to have_no_content("High e")
    expect(page).to have_no_content("No longer singing")
  end
end