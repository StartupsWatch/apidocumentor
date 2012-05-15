class CreateErrorTypes < ActiveRecord::Migration
  def change
    create_table :error_types do |t|
      t.timestamps
      t.references :method_type
      t.integer :code
      t.string :name
      t.string :description

    end
    add_index :error_types, :method_type_id
  end
end
