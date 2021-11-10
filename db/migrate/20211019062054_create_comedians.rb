class CreateComedians < ActiveRecord::Migration[5.2]
  def change
    create_table :comedians do |t|
      t.text :content
      t.text :name
      t.integer :office_id
      t.text :youtube

      t.timestamps
    end
  end
end
