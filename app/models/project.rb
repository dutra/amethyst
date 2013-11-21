class Project < ActiveRecord::Base
  attr_accessible :description, :languages, :source, :title, :file

  has_attached_file :file, :styles => { original: "800x600",
    medium: "800x600",
    thumb: "300x200#",
    carousel: "770x350#" },
  :convert_options => {
    thumb: "-quality 100 -strip",
    medium: "-quality 100 -strip",
    carousel: "-quality 80 -strip" }


end
