require 'spec_helper'

describe New do
  it { should validate_presence_of :title }
  it { should validate_presence_of :content }
end
