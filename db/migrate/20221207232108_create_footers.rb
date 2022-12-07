class CreateFooters < ActiveRecord::Migration[7.0]
  def change
    create_table :footers do |t|
      t.text :code
      t.boolean :active
      t.string :name, uniqueness: true
      t.integer :language_id

      t.timestamps
    end
  end
end
