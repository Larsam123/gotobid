class Ar < ActiveRecord::Base

  has_many :proposal
  has_many :user
end
