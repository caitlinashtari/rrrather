class UpdateAnswers < ActiveRecord::Migration[5.0]
  def change
      rename_column :answers, :answer, :option1
      add_column :answers, :option2, :boolean
  end
end
