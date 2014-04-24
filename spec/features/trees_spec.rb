require 'spec_helper'

feature 'Managing Trees' do
  scenario 'User creates and edits and deletes a tree' do
    visit '/'
    click_on "Trees"
    click_on "Add New Tree"

    click_on "Create Tree"
    expect(page).to have_content("Species can't be blank")

    fill_in "Species", with: "Pine"
    fill_in "Planted on", with: "2014-04-12"
    click_on "Create Tree"
    expect(page).to have_content("Pine")
    expect(page).to have_content("4/12/2014")

    click_on "Pine"
    expect(page).to have_content("Pine")
    expect(page).to have_content("4/12/2014")

    click_on "Edit"
    fill_in "Species", with: ""
    click_on "Update Tree"
    expect(page).to have_content("Species can't be blank")

    fill_in "Species", with: "Oak"
    fill_in "Planted on", with: "2014-05-12"
    click_on "Update Tree"

    expect(page).to have_no_content("Pine")
    expect(page).to have_no_content("4/12/2014")

    expect(page).to have_content("Oak")
    expect(page).to have_content("5/12/2014")

    click_on "Delete"
    expect(page).to have_no_content("Oak")
    expect(page).to have_no_content("5/12/2014")
  end
end