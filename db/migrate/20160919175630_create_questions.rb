class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :topic
      t.string :author

      t.timestamps
    end
  end
end
