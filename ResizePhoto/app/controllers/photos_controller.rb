class PhotosController < ApplicationController

  def image
    content = @photo.image.read
    if stale?(etag: content, last_modified: @photo.updated_at.utc, public: true)
      send_data content, type: @photo.image.file.content_type, disposition: "inline"
      expires_in 0, public: true
    end
  end
end
