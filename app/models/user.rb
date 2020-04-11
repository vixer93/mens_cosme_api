class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable
          # :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User
  has_many :products
  has_many :reviews

  validates :name, :email, presence: true

  def token_validation_response
   as_json(only: [:id, :uid, :allow_password_change, :name])
  end
end
