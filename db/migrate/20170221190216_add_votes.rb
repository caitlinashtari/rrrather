class AddVotes < ActiveRecord::Migration[5.0]
    def change
      create_table :votes do |t|
        t.column :selection, :string
        t.column :question_id, :integer

        t.timestamp
      end
    end
end
