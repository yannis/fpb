class Author < ActiveRecord::Base
  has_many :artworks, inverse_of: :author, dependent: :destroy
  validates_presence_of :first_name, :last_name

  has_attached_file :portrait, styles: {
    original: "",
    s600: "600x600>",
    s400: "400x400>",
    s300: "300x300>",
    s200: "200x200>",
    s100: "100x100>",
    thumb: "100x100"
  }
  validates_attachment :portrait,
    content_type: {
      content_type: /^image\/(jpg|jpeg|pjpeg|png|x-png|gif)$/,
      message: 'file type is not allowed (only jpeg/png/gif images)'
    },
    size: {
      less_than: 10.megabytes
  }

  def full_name
    [first_name, last_name].compact.join(' ')
  end
end
