class Proposal < ActiveRecord::Base


  has_many :user
  has_many :product
  has_many :color
  has_many :material
  has_many :size


end
