class Partner < ActiveRecord::Base
  attr_accessible :name
  
  has_many :contracts
  
  validates :name, presence: true, uniqueness: true
end
