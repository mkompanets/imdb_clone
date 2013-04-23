require 'spec_helper'

describe Occupation do
  it { should belong_to(:person) }
  it { should have_many(:films) }
end
