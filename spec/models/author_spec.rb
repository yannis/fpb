require 'spec_helper'

describe Author do
  it {should have_many :artworks}
  it {should validate_presence_of :first_name }
  it {should validate_presence_of :last_name }
  it { should have_attached_file :portrait }
  # it { should validate_attachment_presence :portrait }
  it { should validate_attachment_content_type(:portrait).
    allowing("image/jpg").
    rejecting('application/msword')
  }
  it { should validate_attachment_size(:portrait).less_than(10.megabytes) }

  describe "a committee member" do
    subject {build :author, first_name: 'Lars', last_name: 'Von Trier'}
    its(:full_name) {should eql "Lars Von Trier"}
  end

end
