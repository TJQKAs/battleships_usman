require 'spec_helper'

feature 'Starting new game' do
  scenario 'I am asked to enter my name' do
    visit '/'
    click_link "New Game"
    expect(page).to have_content "What's your name?"
  end

 scenario 'I am asked if I am ready to play battleships' do
  visit '/newgame'
  fill_in('name', with: "Philip")
  click_button 'submit'
  expect(page).to have_content "Hello Philip, are you ready to play Battleships?"
end

  xscenario "I click on a button which takes me to the board" do
    visit 'newgame?name=Philip'
    click_button 'Yes'
    expect(page).to have_content("Welcome to your board")
  end

  xscenario "I can place a ship on the board" do
    visit 'newgame?name=Philip'
    click_button 'Place Ship'
    expect(page).to have_content "Place Battleship"
  end

  end
