class CreateApiTypes < ActiveRecord::Migration
  def change
    create_table :api_types do |t|
      t.timestamps
      t.references :project
      t.string :name

    end
    add_index :api_types, :project_id
  end
end
