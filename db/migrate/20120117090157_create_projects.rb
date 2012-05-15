class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.timestamps
      t.string :slug, :unique => true
      t.string :name
      t.string :description
    end
    add_index :projects, :slug, :unique => true
  end
end
