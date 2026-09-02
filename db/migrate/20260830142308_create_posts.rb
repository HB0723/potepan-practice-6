class CreatePosts < ActiveRecord::Migration[7.2]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :body
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.boolean :all_day, default: false, null: false

      t.timestamps
    end
  end
end
