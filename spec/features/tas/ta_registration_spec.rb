require 'spec_helper'


feature 'ta signs up' do
   scenario 'with valid information' do
     visit new_teaching_assistant_path

     submit_valid_registration

     expect(page).
       to have_content 'Thank you for signing up to be a Teaching Assistant!'
   end

   scenario 'with invalid information' do
     visit new_teaching_assistant_path

     submit_invalid_registration

     expect(page).to have_content 'Your form submission had errors.'
   end

   def submit_valid_registration
     fill_in 'Name', with: 'Peter Parker'
     fill_in 'Email', with: 'spiderman@example.com'
     fill_in 'Gender', with: 'Male'
     fill_in 'Experience', with: 'I have a lot of it'
     fill_in 'Bio', with: 'is awesome.'
     fill_in 'Company', with: 'Oscorp'
     check 'Linux'
     fill_in 'Other', with: 'All good.'
     select 'Attended Previous Workshop', from: 'Past experience'
     click_button 'Submit Application'
   end

   def submit_invalid_registration
     click_button 'Submit Application'
   end
end
