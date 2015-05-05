class AddSubmissionToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :submission, :string
  end
end
