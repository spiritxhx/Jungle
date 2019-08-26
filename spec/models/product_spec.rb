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
        subject.valid?
        expect(subject.errors[:name].first).to eq"can't be blank"
      end
    end

    describe 'Price validation' do
      it 'is valid with a valid price' do
        subject.price_cents=90
        expect(subject).to be_valid
      end
      it 'is not valid without a valid price' do
        subject.price_cents=nil
        subject.valid?
        expect(subject.errors[:price_cents].first).to eq"is not a number"
      end
    end

    describe 'Quantity validation' do
      it 'is valid with a valid quantity' do
        expect(subject).to be_valid
      end
      it 'is not valid without a valid quantity' do
        subject.quantity = nil
        subject.valid?
        expect(subject.errors[:quantity].first).to eq"can't be blank"
      end
    end

    describe 'Category validation' do
      it 'is valid with a valid category' do
        expect(subject).to be_valid
      end
      it 'is not valid without a valid category' do
        subject.category = nil
        subject.valid?
        expect(subject.errors[:category].first).to eq"can't be blank"
      end
    end

  end
end
