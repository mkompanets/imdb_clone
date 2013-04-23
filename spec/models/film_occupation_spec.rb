require 'spec_helper'

describe FilmOccupation do
  it { should belong_to(:film) }
  it { should belong_to(:occupation) }
end
