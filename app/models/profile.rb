class Profile < ApplicationRecord
  validates :full_name, presence: true
  validates :email, presence: true
  validates :phone_number, length: { is: 8 }
  validates :age, numericality: { only_integer: true }
  validates :email, uniqueness: true
end
