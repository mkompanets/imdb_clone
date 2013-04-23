class Occupation < ActiveRecord::Base
  attr_accessible :person_id
  self.inheritance_column = 'occupation_type'
  belongs_to :person
  has_many :film_occupations
  has_many :films, :through => :film_occupations

  def name
    person.name
  end
end
