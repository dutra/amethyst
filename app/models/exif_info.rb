class ExifInfo < ActiveRecord::Base
  attr_accessible :exif, :aperture, :camera, :focal_length, :iso, :shutter_speed, :taken, :latitude, :longitude
  belongs_to :photo

  def scan(photo)
    ei = self
    info = EXIFR::JPEG.new(photo.file.path)
    ei.exif = info.exif?
    ei.aperture = info.aperture_value
    ei.camera = info.model
    ei.taken = info.date_time_original
    ei.focal_length = info.focal_length.to_s
    ei.iso = info.iso_speed_ratings.to_i
    ei.shutter_speed = info.shutter_speed_value.to_s
    ei.latitude = info.gps.latitude.to_f
    ei.longitude = info.gps.longitude.to_f
#    ei.taken
 end
end
