require 'spec_helper'

describe Artwork do
  it { should belong_to :author}
  it { should validate_presence_of :title }
  it { should validate_presence_of :author_id }
end
