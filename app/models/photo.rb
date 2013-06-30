class Photo < ActiveRecord::Base
  attr_accessible :file, :description, :title
  has_attached_file :file
end
