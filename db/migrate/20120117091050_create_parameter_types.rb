class CreateParameterTypes < ActiveRecord::Migration
  def change
    create_table :parameter_types do |t|
      t.timestamps
      
      t.references :method_type
      t.string :name
      t.string "param_type"#, :enum, :limit => ["string", "integer", "float", "array"]
      t.boolean :optional
      t.string :description

    end
    
    add_index :parameter_types, :method_type_id
  end
end
