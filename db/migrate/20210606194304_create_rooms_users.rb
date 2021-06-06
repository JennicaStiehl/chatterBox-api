class CreateRoomsUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms_users do |t|
      t.belongs_to :room
      t.belongs_to :user

      t.timestamps
    end
  end
end
