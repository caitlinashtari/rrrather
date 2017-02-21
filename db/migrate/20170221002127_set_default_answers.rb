class SetDefaultAnswers < ActiveRecord::Migration[5.0]
  def change
    change_column_default :answers, :option1, false
    change_column_default :answers, :option2, false
  end
end
