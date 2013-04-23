class FilmOccupation < ActiveRecord::Base
  attr_accessible :film_id, :occupation_id
  belongs_to :film
  belongs_to :occupation
end
