class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable
          # :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User

  has_many :products
  has_many :reviews
  has_many :favorites, dependent: :delete_all

  enum age: {
    teens:        0,
    twenties:     1,
    thirties:     2,
    forties:      3,
    fifties:      4,
    over_sixties: 5
  }

  validates :name, :email, :age, presence: true

  def token_validation_response
   as_json(only: [:id, :uid, :allow_password_change, :name, :age])
  end
end
