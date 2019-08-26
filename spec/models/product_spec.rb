require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    cat = Category.new(name:"meat")
    subject {described_class.new(price_cents:100, name: 'Anything', quantity: 2, category: cat)}
    describe 'Name validation' do 
      it 'is valid with a valid name' do
        subject.name = 'Anything'
        expect(subject).to be_valid
      end
      it 'is not valid without a valid name' do
        subject.name = nil
        expect(subject).to_not be_valid
      end
    end
  end
end
