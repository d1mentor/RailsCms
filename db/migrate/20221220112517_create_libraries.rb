class CreateLibraries < ActiveRecord::Migration[7.0]
  def change
    create_table :libraries do |t|
      t.string :name
      t.string :description
      t.json :library_items

      t.timestamps
    end
  end
end
