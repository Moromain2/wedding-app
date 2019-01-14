class RenamePostTitle < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :tile, :title
  end
end
