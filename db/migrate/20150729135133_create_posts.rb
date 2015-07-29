  class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |x|
      x.string :desc
      x.integer :category_id

      x.timestamps null:false
    end
  end
end
