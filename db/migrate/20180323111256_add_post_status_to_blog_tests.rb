class AddPostStatusToBlogTests < ActiveRecord::Migration[5.1]
  def change
    add_column :blog_tests, :status, :integer, default: 0
  end
end

