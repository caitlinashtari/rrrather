class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.column :comment, :string
      t.column :author, :string
      t.column :answer_id, :integer
      t.column :question_id, :integer

      t.timestamp
    end
  end
end
