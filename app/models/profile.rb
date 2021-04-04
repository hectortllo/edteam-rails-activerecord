class Profile < ApplicationRecord
  after_initialize do |profile|
    puts "You have initialized an object"
  end

  after_find do |profile|
    puts "You have found an object!"
  end

  after_create :show_message

  validates :full_name, presence: true
  validates :email, presence: true
  validates :phone_number, length: { is: 8 }
  validates :age, numericality: { only_integer: true }
  validates :email, uniqueness: true

  private
  def show_message
    puts "You have created an object!"
  end
end
