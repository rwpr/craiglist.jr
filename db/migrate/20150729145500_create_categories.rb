class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |x|
      x.string :name

      x.timestamps null:false
    end
  end
end
