class CreatePosts < ActiveRecord::Migration
  def change
    create_table :spree_posts do |t|
      t.string :title
      t.text :description
      t.date :event_date
      t.boolean :published

      t.timestamps
    end
  end
end
