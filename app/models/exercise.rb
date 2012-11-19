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
  bucket: 'siansmale',
  s3_credentials: {
    access_key_id: "AKIAISAZ6DVU3Q3NZYPA",
    secret_access_key: "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"
  }

end
