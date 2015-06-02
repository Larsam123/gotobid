class Proposal < ActiveRecord::Base


  has_many :users
  has_many :proposalprods


end
