class CreateCounselings < ActiveRecord::Migration[5.2]
  def change
    create_table :counselings do |t|
      t.integer :user_id
      t.integer :genre_id
      t.string :title
      t.text :content
      t.integer :level
      t.timestamps
    end
  end
end
