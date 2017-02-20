class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.column :question, :string
      t.column :author, :string
      
      t.timestamp
    end
  end
end
