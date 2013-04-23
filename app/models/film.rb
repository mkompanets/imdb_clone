class Film < ActiveRecord::Base
  attr_accessible :title, :length, :synopsis
  has_many :film_occupations
  has_many :actors, :through => :film_occupations, :source => :occupation, :conditions =>{ :occupation_type => "Actor" }
  has_many :directors, :through => :film_occupations, :source => :occupation, :conditions =>{ :occupation_type => "Director" }
  has_many :producers, :through => :film_occupations, :source => :occupation, :conditions =>{ :occupation_type => "Producer" }
  has_many :writers, :through => :film_occupations, :source => :occupation, :conditions =>{ :occupation_type => "Writer" }

  has_many :characters
  has_and_belongs_to_many :genres
  validates_presence_of :title
end
