class DropTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :sessions
    drop_table :chatrooms
  end
end
