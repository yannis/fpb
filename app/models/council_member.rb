class CouncilMember < ActiveRecord::Base

  TITLE = ["Mr", "Ms", "Dr.", "Prof."]

  validates_presence_of :first_name, :last_name, :email
  validates_uniqueness_of :last_name, :scope => :first_name
  validates_uniqueness_of :email
  validates_inclusion_of :title, in: TITLE, allow_nil: true

  has_attached_file :portrait, styles: {
    original: "",
    s300: "400x400>",
    s300: "300x300>",
    s200: "200x200>",
    s100: "100x100>",
    thumb: "100x100#"
  }
  validates_attachment :portrait,
    # presence: true,
    content_type: {
      content_type: /^image\/(jpg|jpeg|pjpeg|png|x-png|gif)$/,
      message: 'file type is not allowed (only jpeg/png/gif images)'
    },
    size: {
      less_than: 10.megabytes
  }

  def full_name
    [title, first_name, last_name].compact.join(' ')
  end
end
