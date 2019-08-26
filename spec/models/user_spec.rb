require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    subject {described_class.new(name: 'Bob', email: 'bob@me', password: 'qweasd123', password_confirmation: 'qweasd123')}
    describe 'Password exists' do 
      it 'is valid with a valid password' do
        # subject.valid?
        expect(subject).to be_valid
      end
      it 'should have a password' do
        subject.password = nil
        subject.valid?
        expect(subject.errors[:password].first).to eq"can't be blank"
      end
    end

    describe 'Password_confirmation exists' do 
      it 'is valid with a valid password_confirmation' do
        # subject.valid?
        expect(subject).to be_valid
      end
      it 'should have a password_confirmation' do
        subject.password_confirmation = nil
        subject.valid?
        expect(subject.errors[:password_confirmation].first).to eq"can't be blank"
      end
    end
  end
end
