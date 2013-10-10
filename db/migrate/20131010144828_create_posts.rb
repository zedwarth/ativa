class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :message
      t.string :attachment
      t.references :phase, index: true
      t.references :project, index: true

      t.timestamps
    end
  end
end
