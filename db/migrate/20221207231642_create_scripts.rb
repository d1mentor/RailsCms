class CreateScripts < ActiveRecord::Migration[7.0]
  def change
    create_table :scripts do |t|
      t.text :code
      t.string :description
      t.string :link_tag
      t.string :name
      t.integer :cutaway_page_id

      t.timestamps
    end
  end
end
