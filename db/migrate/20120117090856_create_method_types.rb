class CreateMethodTypes < ActiveRecord::Migration
  def change
    create_table :method_types do |t|
      t.timestamps
      t.references :api_type
      t.string :http_method #, :enum, :limit => ["GET", "POST", "PUT", "DELETE"]
      t.string :name
      t.string :description
      t.string :url
      t.string :sample_request
      t.text :sample_response
      t.integer :http_response_code

    end
    add_index :method_types, :api_type_id
  end
end
