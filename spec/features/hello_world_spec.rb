require 'rails_helper'

feature 'User wants greeting' do
  scenario 'says Hello World' do
    visit helloworld_path
    expect(page).to have_css 'h1', :text => 'Hello World', :visible => true
  end
end