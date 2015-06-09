class Proposalprod < ActiveRecord::Base

  belongs_to :proposal
  belongs_to :product
  belongs_to :size
  belongs_to :material
  belongs_to :color
  belongs_to :user

end
