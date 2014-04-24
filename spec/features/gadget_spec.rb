require 'spec_helper'

feature 'Managing Gadgets' do
  scenario 'User creates and edits and deletes a gadget' do
    visit '/'
    click_on "Gadgets"
    click_on "Add New Gadget"

    click_on "Create Gadget"
    expect(page).to have_content("Model can't be blank")

    fill_in "Model", with: "iPhone"
    fill_in "Price", with: "549"
    click_on "Create Gadget"
    expect(page).to have_content("iPhone")
    expect(page).to have_content("$549.00")

    click_on "iPhone"
    expect(page).to have_content("iPhone")
    expect(page).to have_content("549")

    click_on "Edit"
    fill_in "Model", with: ""
    click_on "Update Gadget"
    expect(page).to have_content("Model can't be blank")

    fill_in "Model", with: "Samsung galaxy"
    fill_in "Price", with: "245"
    click_on "Update Gadget"

    expect(page).to have_no_content("iPhone")
    expect(page).to have_no_content("549")

    expect(page).to have_content("Samsung galaxy")
    expect(page).to have_content("245")

    click_on "Delete"
    expect(page).to have_no_content("Samsung galaxy")
    expect(page).to have_no_content("245")
  end
end