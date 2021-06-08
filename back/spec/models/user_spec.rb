require 'rails_helper'

RSpec.describe User, type: :model do
  context 'create user' do
    it "is valid user" do
      user = FactoryBot.build(:user)
      expect(user).to be_valid
    end
  end 

  context 'can not create user' do
    it "is invalid without a name" do
      user = FactoryBot.build(:user, name:"")
      expect(user).to be_invalid
    end

    it 'is invalid without an email' do
      user = FactoryBot.build(:user, email: "")
      expect(user).to be_invalid
    end

    it 'is invalid without an password' do
      user = FactoryBot.build(:user, password: "")
      expect(user).to be_invalid
    end

    it 'is invalid when password & password_confirmation is not matched' do
      user = FactoryBot.build(:user, password: "1234")
      expect(user).to be_invalid
    end
  end 
end