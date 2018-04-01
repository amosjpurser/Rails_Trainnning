class AddSlugToBlogTests < ActiveRecord::Migration[5.1]
  def change
    add_column :blog_tests, :slug, :string
    add_index :blog_tests, :slug, unique: true
  end
end
