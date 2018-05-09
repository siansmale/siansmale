class Exercise < ActiveRecord::Base
  has_attached_file :image, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  },
  storage: :s3,
  path: ":attachment/:id/:style.:extension",
  url: ":s3_domain_url",
  bucket: Rails.application.secrets.aws_bucket,
  s3_region: 'us-east-1',
  s3_credentials: {
    access_key_id: Rails.application.secrets.aws_access_key_id,
    secret_access_key: Rails.application.secrets.aws_secret_access_key
  }
  validates_attachment_content_type :image, :content_type=>['image/jpeg', 'image/png', 'image/gif']
end
