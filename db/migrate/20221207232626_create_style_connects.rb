class CreateStyleConnects < ActiveRecord::Migration[7.0]
  def change
    create_table :style_connects do |t|
      t.integer :style_id
      t.integer :cutaway_page_id

      t.timestamps
    end
  end
end
