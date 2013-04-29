class CreateShouts < ActiveRecord::Migration
  def up
    create_table :shouts do |t|
      t.string :body, null: false
      t.belongs_to :user

      t.timestamps
    end
    add_index :shouts, :user_id
  end
end
