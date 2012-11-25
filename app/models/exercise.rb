class Exercise < ActiveRecord::Base
  attr_accessible :description, :image, :name, :image_file_name, :image_content_type, :image_file_size, :image_updated_at

  validates_attachment_content_type :image, :content_type=>['image/jpeg', 'image/png', 'image/gif']

  has_attached_file :image, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  },
  storage: :s3,
  path: ":attachment/:id/:style.:extension",
  url: ":s3_domain_url",
  bucket: ENV["AWS_BUCKET"],
  s3_credentials: {
    access_key_id: ENV["AWS_ACCESS_KEY_ID"],
    secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"]
  }

end
