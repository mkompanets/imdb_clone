class Person < ActiveRecord::Base
  attr_accessible :name, :birth_name, :birth_location, :biography
  has_many :occupations
  validates_presence_of :name
end
