CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider              => 'AWS',
    :aws_access_key_id     => ENV['S3_ACCESS'],
    :aws_secret_access_key => ENV['S3_SECRET'],
    :region                => 'ap-southeast-2', # sydney
    :host   => 's3-ap-southeast-2.amazonaws.com'
  }
  config.storage = :fog
  config.fog_directory = ENV['S3_BUCKET']
end

class ImageUploader < CarrierWave::Uploader::Base
  storage :fog
end

class Animal < ActiveRecord::Base
  belongs_to :user
  belongs_to :dog_breed
  belongs_to :city
  mount_uploader :image, ImageUploader
end
