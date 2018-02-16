class Photo
  include Mongoid::Document
  attr_accessible :image,
  mount_uploader :image, ImagesUploader

end
