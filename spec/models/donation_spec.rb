require 'spec_helper'

describe Donation do
  it { should validate_presence_of :name }
  it { should validate_presence_of :location }
end
