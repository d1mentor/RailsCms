class CreateCutawayPageVersions < ActiveRecord::Migration[7.0]
  def change
    create_table :cutaway_page_versions do |t|
      t.string :name
      t.integer :language_id
      t.text :header
      t.text :body
      t.boolean :index, default: false
      t.boolean :visible, default: true
      t.text :images
      t.integer :cutaway_page_id
      t.string :route_link, uniqueness: true

      t.timestamps
    end
  end
end
