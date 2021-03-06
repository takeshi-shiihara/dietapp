class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         validates :name, :email, :password, :gender, presence: true
         enum gender: { draft: 0, published: 1 }

  has_many :foods
  has_many :weights
end
