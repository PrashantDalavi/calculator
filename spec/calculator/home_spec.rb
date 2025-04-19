require 'rails_helper'

RSpec.describe 'Calculator Page', type: :feature do
  it 'visits and confirms the calculator page' do
    visit('/')
  end

  it 'fetches the ehader of the page' do
    visit('/')
    expect(page).to have_content('Calculator')
  end
end