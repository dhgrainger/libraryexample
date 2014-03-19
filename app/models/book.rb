class Book < ActiveRecord::Base
  has_many :checkouts
  validates :rating, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 100}

  has_many :categorizations
  has_many :categories, through: :categorizations



end
