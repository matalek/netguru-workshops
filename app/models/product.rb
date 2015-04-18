class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews

  #  Validations
  validates_presence_of :title
  validates_presence_of :price
  validates_presence_of :description
  validates_format_of :price, :with => /\A\d+(?:\.\d{0,2})?\z/

  # Computes average rating
  def average_rating
    sum = 0.0
    self.reviews.each do |r|
      sum += r.rating
    end
    if self.reviews.count == 0
      return 0.0
    else
      return sum / self.reviews.count
    end
  end

end
