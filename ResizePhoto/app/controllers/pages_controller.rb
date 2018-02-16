class PagesController < ApplicationController


  def home
    @photo = MiniMagick::Image.open("http://54.152.221.29/images/b737_1.jpg")
    @photo.path #=> "app/assets/images"
    @photo.resize "320x240"
    @photo.write "small.png"


    # @photo.resize "384x288"
    # @photo.write "/app/assets/images/#{url(29..url.length -5)}-medium.png"
    # @photo.resize "/app/assets/images/320x240"
    # @photo.write "/app/assets/images/#{url(29..url.length -5)}-large.png"


  end

end

