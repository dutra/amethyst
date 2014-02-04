require 'csv'

namespace :db do
  desc "Fill database with carousels"
  task carousels: :environment do
    create_carousels

  end
end

def create_carousels

  CSV.foreach("db/data/carousels.csv", headers: true) do | row |
    title = row['title']
    description = row['description']
    album = row['album']

    puts "Processing carousel #{title}"

    c = Carousel.new
    c.title = title
    c.description = description
    c.file = File.open(Dir.glob(File.join(Rails.root, 'private', 'carousels', "#{album.underscore}.jpg")).first)

    unless album.blank?
      a = Album.find_by_title(album)
      c.album_id = a.id
    end
    
    c.save!
    
  end

end

