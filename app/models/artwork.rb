class Artwork < ActiveRecord::Base
  belongs_to :author, inverse_of: :artworks
  validates_presence_of :title, :author_id

  has_attached_file :picture, styles: {
    original: "",
    s1000: "1000x1000>",
    s800: "800x800>",
    s600: "600x600>",
    s400: "400x400>",
    s300: "300x300>",
    s200: "200x200>",
    s100: "100x100>",
    thumb: "100x100"
  }
  validates_attachment :picture,
    # presence: true,
    content_type: {
      content_type: /^image\/(jpg|jpeg|pjpeg|png|x-png|gif)$/,
      message: 'file type is not allowed (only jpeg/png/gif images)'
    },
    size: {
      less_than: 10.megabytes
  }
end
