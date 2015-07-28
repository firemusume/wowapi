class Race < ActiveRecord::Base
  attr_accessible :id, :name, :side
  has_many :characters 
end
