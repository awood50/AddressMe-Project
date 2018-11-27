require 'rails_helper.rb'

feature"User adds an address" do
    scenario "User successfully navigates to the new address page from the listing addresses page" do
        visit addresses_path
        expect(page).to have_content("Listing Addresses")
        click_link "New"
        expect(page).to have_content("New Contact")
        expect(page).to have_field("Name")
        expect(page).to have_field("Phone number")
        expect(page).to have_field("Email")
        expect(page).to have_field("Address")
 
    end
end    
    
    feature"User views an address"do
     scenario "User successfully navigates to the view address page from the listing addresses page" do
        visit addresses_path
        expect(page).to have_content("Listing Addresses")
        click_link "Show"
        #expect(page).to have_content("New Contact")
        expect(page).to have_field("Name")
        expect(page).to have_field("Phone number")
        expect(page).to have_field("Email")
        expect(page).to have_field("Address")
    end    
end