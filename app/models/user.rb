class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, :presence => true
  validates :address, :presence => true
  validates :email, :presence => true
  validates :phone, :presence => true

  has_many :proposals

end
