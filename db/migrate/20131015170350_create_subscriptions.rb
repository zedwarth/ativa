class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.references  :user
      t.references  :project

      t.timestamps
    end
  end
end
