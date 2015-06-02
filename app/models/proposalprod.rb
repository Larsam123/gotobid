class Proposalprod < ActiveRecord::Base

  belongs_to :proposal

  has_many :products
  has_many :sizes
  has_many :materials
  has_many :colors

end
