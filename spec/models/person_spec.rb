require 'spec_helper'

describe Person do
  before(:each) do
    @person = FactoryGirl.create(:person)
    @film = FactoryGirl.create(:film)
    @character = FactoryGirl.create(:character)

    @actor = Actor.create( person_id: @person.id )
    @writer = Writer.create( person_id: @person.id )
    @director = Director.create( person_id: @person.id )
  end

  it { should have_many(:occupations) }
  it { should validate_presence_of :name }
  it "should be valid" do
    @person.should be_valid
  end
  it "should associate film with character" do
    @film.characters << @character
    @film.characters.count.should == 1
  end
  it "should associate character with actor" do
    @actor.characters << @character
    @actor.characters.count.should == 1
    @character.actor.should_not be_blank
  end
  it "should associate actor with person" do
    @actor.person.name.should == "Brock Samson"
  end
  it "should associate film with actor" do
    @film.actors << @actor
    @film.film_occupations.count.should == 1
    @film.actors.count.should == 1
  end

  it "should associate actor with film" do
    @actor.films << @film
    @film.film_occupations.count.should == 1
    @film.actors.count.should == 1
  end

end
