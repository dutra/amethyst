class CreateCarousels < ActiveRecord::Migration
  def change
    create_table :carousels do |t|
      t.string :title
      t.string :description
      t.belongs_to :album
      
      t.timestamps
    end
  end
end
