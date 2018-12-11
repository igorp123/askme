class AddAuthorRefToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_reference :questions, :author, foreign_key: true, column: :author_id
  end
end
