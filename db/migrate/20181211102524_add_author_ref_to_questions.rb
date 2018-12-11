class AddAuthorRefToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_reference :questions, :author_id, foreign_key: true
  end
end
