class CreateLanguages < ActiveRecord::Migration[7.0]
  def change
    create_table :languages do |t|
      t.string :code
      t.boolean :default
      t.integer :views

      t.timestamps
    end
  end
end
