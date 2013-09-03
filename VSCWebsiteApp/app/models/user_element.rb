class UserElement < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :title, :element_type
  validates :title, :description, :element_type, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.00}
  default_scope :order => 'price'
end
