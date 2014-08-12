class CreatePosts < ActiveRecord::Migration
  def change
    create_table :spree_posts do |t|
      t.string :title
      t.text :description
      t.string :event_month
      t.string :event_day
      t.string :event_year
      t.string :event_time
      t.boolean :published

      t.timestamps
    end
  end
end
