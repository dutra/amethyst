class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :file
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
