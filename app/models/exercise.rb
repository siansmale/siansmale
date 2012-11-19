class Exercise < ActiveRecord::Base
  attr_accessible :description, :image, :name

  validates_attachment_content_type :image, :content_type=>['image/jpeg', 'image/png', 'image/gif']

  has_attached_file :image, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

end
