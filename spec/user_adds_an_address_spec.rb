require 'rails_helper.rb'

feature"User enters website" do
    scenario "User successfully navigates to the listing addreses page from the welcome page" do
        visit welcome_index_path
        expect(page).to have_content("AddressMe")
        click_link "AddressMe"
        expect(page).to have_content("Listing Addresses")
    end
end

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
        click_link "Show"  #Professor Nadia spent a long time trying to help us fix why the tests were failing. She said she was not able to come up with a solution. She told us to comment that she said it was alright that it failed and that we should not lose points for that.
        expect(page).to have_content("Contact Information")  
        expect(page).to have_content("Name:")
        expect(page).to have_content("Phone Number:")
        expect(page).to have_content("Email:")
        expect(page).to have_content("Address:")
    end    
end

feature"User edits an address" do
    scenario "User successfully navigates to the edit address page from the listing addresses page" do
        visit addresses_path
        expect(page).to have_content("Listing Addresses")
        click_link "Edit"                           #Professor Nadia spent a long time trying to help us fix why the tests were failing. She said she was not able to come up with a solution. She told us to comment that she said it was alright that it failed and that we should not lose points for that.
        expect(page).to have_content("Edit Contact")   
        click_link "Delete"
        expect(page).to have_content("New Contact")
        expect(page).to have_field("Name")
        expect(page).to have_field("Phone number")
        expect(page).to have_field("Email")
        expect(page).to have_field("Address")
 
    end
end    
