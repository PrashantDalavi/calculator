require 'rails_helper'

RSpec.describe 'Calculator Page', type: :feature do
  it 'visits and confirms the calculator page' do
    visit('/')
  end

  it 'fetches the ehader of the page' do
    visit('/')
    expect(page).to have_content('Calculator')
  end

  it 'inputs the data for addition' do
    visit('/')
    fill_in 'query', with: '12kewby45;5'
    click_button('Add')
    expect(page).to have_content('Answer:')
  end

  context 'when there is an error' do
    it 'inputs the negative number' do
      visit('/')
      fill_in 'query', with: '12kewby45;-5'
      click_button('Add')
      expect(page).to have_content('Please choose only positive numbers')
    end
  end
end