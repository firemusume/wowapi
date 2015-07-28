class Klass < ActiveRecord::Base
  attr_accessible :id, :name
  has_many :characters
end
