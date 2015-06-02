class Proposal < ActiveRecord::Base


  has_many :users
  has_many :proposalprods

  has_many :products, :through => :proposalprods
  has_many :sizes, :through => :proposalprods
  has_many :materials, :through => :proposalprods
  has_many :colors, :through => :proposalprods


end
