class ChangeQuestionColumnNameTopicToText < ActiveRecord::Migration[5.0]
  def change
    rename_column :questions, :topic, :text
    rename_column :comments, :content, :text
  end
end
