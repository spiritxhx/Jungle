require 'rails_helper'

RSpec.feature "Visitor navigate to product page", type: :feature, js:true do
  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence( 3),
        description: Faker::Hipster.paragraph( 4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "They clicked the details" do
    visit root_path

    click_link("Details »", match: :first)
    
    expect(page).to have_content('Description')
    # puts page.html
    save_screenshot
  end

end
