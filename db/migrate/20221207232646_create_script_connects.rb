class CreateScriptConnects < ActiveRecord::Migration[7.0]
  def change
    create_table :script_connects do |t|
      t.integer :script_id
      t.integer :cutaway_page_id

      t.timestamps
    end
  end
end
