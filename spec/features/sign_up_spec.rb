require 'rails_helper.rb'

feature 'Signing up' do
  scenario 'can sign up' do
    visit '/users/new'
    fill_in 'Email', with: 'testing@test.com'
    fill_in 'Password', with: '12345678'
    fill_in 'Password confirmation', with: '12345678'
    click_button 'Register'
    
    
  end
end