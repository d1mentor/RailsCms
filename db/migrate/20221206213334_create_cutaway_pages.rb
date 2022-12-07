class CreateCutawayPages < ActiveRecord::Migration[7.0]
  def change
    create_table :cutaway_pages do |t|
      t.integer :parent_id
      t.string :description

      t.timestamps
    end
  end
end
