require 'spec_helper'

feature 'Nav Bar' do
  scenario 'links to Hello World' do
    visit helloworld_path 
    expect(page).to have_css '.navbar ul li a[href=\'/helloworld\']', :text => 'Hello World'
  end
end