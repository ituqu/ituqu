# encoding: utf-8

class AvatarUploader < CarrierWave::Uploader::Base

  include CarrierWave::MimeTypes
  include CarrierWave::RMagick

  storage :file

  def store_dir
    "public/images"
    #"uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
 
  process :resize_to_fit => [800, 800]

  version :thumb do
    process :resize_to_fill => [200,200]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
