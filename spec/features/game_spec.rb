require 'rails_helper'

feature 'starting a game', :js do
  scenario 'seeing the first line of text in the script' do
    visit '/'

    expect(page).to have_content 'It was a dark and stormy night.'
  end
end
