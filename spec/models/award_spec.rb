require 'spec_helper'

describe Award do
  it { should validate_presence_of :laureate }
  it { should validate_presence_of :title }
  it { should validate_presence_of :awarded_on }
end
