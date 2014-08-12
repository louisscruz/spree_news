class CreatePosts < ActiveRecord::Migration
  def change
    create_table :spree_posts do |t|
      t.string :title
      t.text :description
      t.text :event_month
      t.text :event_day
      t.text :event_year
      t.text :event_time
      t.boolean :published

      t.timestamps
    end
  end
end
