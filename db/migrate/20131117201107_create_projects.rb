class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :source
      t.string :languages

      t.timestamps
    end
  end
end
