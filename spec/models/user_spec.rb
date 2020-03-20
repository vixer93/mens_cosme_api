require 'rails_helper'

describe User do
  describe '#create' do
    it 'is valid' do
      user = build(:user)
      user.valid?
      expect(user).to be_valid
    end

    it 'is invalid without name' do
      user = build(:user, name: "")
      user.valid?
      expect(user.errors[:name]).to include("can't be blank")
    end

    it 'is invalid without email' do
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end

    it 'is invalid without uid' do
      user = build(:user, uid: "")
      user.valid?
      expect(user.errors[:uid]).to include("can't be blank")
    end
  end
end