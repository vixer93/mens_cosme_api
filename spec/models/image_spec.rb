require 'rails_helper'

describe Image do
  describe '#create' do
    before do
      user     = create(:user)
      @product = create(:product, user_id: user.id)
    end

    it 'is valid' do
      image = build(:image, product_id: @product.id)
      image.valid?
      expect(image).to be_valid
    end

    it 'is invalid without name' do
      image = build(:image, name: "", product_id: @product.id)
      image.valid?
      expect(image.errors[:name]).to include("can't be blank")
    end

    it 'is invalid without product_id' do
      image = build(:image)
      image.valid?
      expect(image.errors[:product]).to include("must exist")
    end
  end
end