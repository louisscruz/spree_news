class CreatePosts < ActiveRecord::Migration
  def change
    create_table :spree_posts do |t|
      t.string :title
      t.text :description
      t.datetime :event_date
      t.text :event_venue
      t.text :event_link
      t.boolean :published

      t.timestamps
    end
  end
end
