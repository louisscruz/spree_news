class CreatePosts < ActiveRecord::Migration
  def change
    create_table :spree_posts do |t|
      t.string :title
      t.text :description
      t.datetime :date
      t.boolean :published

      t.timestamps
    end
  end
end
