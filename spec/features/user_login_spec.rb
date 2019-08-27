require 'rails_helper'

RSpec.feature "UserLogins", type: :feature, js: :true do
    # SETUP
    before :each do
      @category = Category.create! name: 'Apparel'
      @user = User.create! name: 'chicken', email: 'chicken@me', password: 'qweasd123', password_confirmation: 'qweasd123'
  
      10.times do |n|
        @category.products.create!(
          name:  Faker::Hipster.sentence(3),
          description: Faker::Hipster.paragraph(4),
          image: open_asset('apparel1.jpg'),
          quantity: 10,
          price: 64.99
        )
      end
    end


    scenario "should be able to login" do
      visit root_path
      click_link("Login")

      fill_in 'email', with: 'chicken@me'
      fill_in 'password', with: 'qweasd123'
      click_button("Submit")

      expect(page).to have_content('chicken')
      save_screenshot
    end
end
