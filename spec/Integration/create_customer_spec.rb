require 'spec_helper'
require 'rails_helper'

feature 'create customer' do
    scenario "can create customer" do
        visit '/customers/new'
        expect(page).to have_content('Add a New Customer')
       
        fill_in 'First name', :with=>'Sharon'
        fill_in 'Last name', :with=>'Harrison'
        fill_in 'Has good credit', :with=>1
        click_button 'Create Customer'
        expect(page).to have_content('First name: Sharon')
        expect(page).to have_content('Last name: Harrison')
        expect(page).to have_content('Dundee')
        expect(page).to have_content('Address')
           #add the address for the customer
        click_link 'Edit Address'
        expect(page).to have_content('Editing Address')
        fill_in 'Street', :with=>'4 High Street'
        fill_in 'City', :with=>'Dundee'
        fill_in 'Postcode', :with=>'DD2 4PS'
        click_button 'Update Address'
        expect(page).to have_content('Last name: Harrison')
      end
       scenario "can create customer error" do
        visit '/customers/new'
        expect(page).to have_content('New Customer')
        click_button 'Create Customer'
        check for 'First name can\'t be blank'
    end
end