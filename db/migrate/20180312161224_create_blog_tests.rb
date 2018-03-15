class CreateBlogTests < ActiveRecord::Migration[5.1]
  def change
    create_table :blog_tests do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
