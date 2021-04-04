class Student < ApplicationRecord
  has_many :courses
  has_many :teachers, through: :courses
end
