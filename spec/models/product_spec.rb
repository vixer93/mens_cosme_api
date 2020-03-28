require 'rails_helper'

describe Product do
  describe '#create' do
    before do
      @user    = create(:user)
    end

    it 'is valid' do
      product = build(:product, user_id: @user.id)
      product.valid?
      expect(product).to be_valid
    end

    it 'is invalid without name' do
      product = build(:product, name: "", user_id: @user.id)
      product.valid?
      expect(product.errors[:name]).to include("can't be blank")
    end

    it 'is invalid without brand' do
      product = build(:product, brand: "", user_id: @user.id)
      product.valid?
      expect(product.errors[:brand]).to include("can't be blank")
    end

    it 'is invalid without prise' do
      product = build(:product, price: nil, user_id: @user.id)
      product.valid?
      expect(product.errors[:price]).to include("can't be blank")
    end

    it 'is invalid without user_id' do
      product = build(:product)
      product.valid?
      expect(product.errors[:user]).to include("must exist")
    end
  end
end