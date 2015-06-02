class Proposal < ActiveRecord::Base


  belongs_to :user
  has_many :proposalprods

  has_many :products, :through => :proposalprods
  has_many :sizes, :through => :proposalprods
  has_many :materials, :through => :proposalprods
  has_many :colors, :through => :proposalprods


end
