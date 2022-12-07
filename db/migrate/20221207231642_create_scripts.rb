class CreateScripts < ActiveRecord::Migration[7.0]
  def change
    create_table :scripts do |t|
      t.text :code
      t.string :description
      t.string :link_tag
      t.boolean :as_file, default: false
      t.boolean :for_all_pages, default: false

      t.timestamps
    end
  end
end
