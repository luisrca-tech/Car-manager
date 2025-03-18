class Car < ApplicationRecord
  validates_presence_of :model, :year, :color
  validates :is_selling, inclusion: { in: [true, false] }
  
  before_validation :set_default_is_selling
  
  private
  
  def set_default_is_selling
    self.is_selling = false if is_selling.nil?
  end
end
