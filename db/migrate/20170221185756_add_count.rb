class AddCount < ActiveRecord::Migration[5.0]
  def change
    drop_table :answers
  end
end
