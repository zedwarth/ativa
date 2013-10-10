class ChangePostsAttachmentToText < ActiveRecord::Migration
  def change
    change_column :posts, :attachment, :text
  end
end
