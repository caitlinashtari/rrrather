class UpdateQuestions < ActiveRecord::Migration[5.0]
  def change
    rename_column :questions, :question, :firstoption
    add_column :questions, :secondoption, :string
  end
end
