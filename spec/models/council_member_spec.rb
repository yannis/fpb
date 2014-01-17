require 'spec_helper'

describe CouncilMember do
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  # it { should validate_presence_of :email }
  it { should validate_uniqueness_of :email }
  it {should validate_uniqueness_of(:last_name).scoped_to(:first_name)}
  it {should ensure_inclusion_of(:title).in_array(CouncilMember::TITLE)}
  it {should ensure_inclusion_of(:function).in_array(CouncilMember::FUNCTION)}
  # it {should have_attached_file(:portrait) }
end

describe "a council member" do
  subject {build :council_member, first_name: 'Lars', last_name: 'Von Trier', title: "Prof."}
  its(:full_name) {should eql "Prof. Lars Von Trier"}
end
