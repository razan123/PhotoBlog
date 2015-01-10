class Post < ActiveRecord::Base
  attr_accessible :title, :body, :picture,:category_id
  mount_uploader :picture, PictureUploader
  belongs_to :category
  validates :picture, presence: true
  
end
