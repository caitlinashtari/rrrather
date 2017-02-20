class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.column :answer, :boolean
      t.column :author, :string
      t.column :question_id, :integer

      t.timestamp
    end
  end
end
