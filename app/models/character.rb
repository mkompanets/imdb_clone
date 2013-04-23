class Character < ActiveRecord::Base
  belongs_to :film
  belongs_to :actor
  validates_presence_of :name
end
