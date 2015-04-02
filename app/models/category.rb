class Category < ActiveRecord::Base
  has_many :products

  # Validations
  validates_uniqueness_of :name
  validates_presence_of :name
end
