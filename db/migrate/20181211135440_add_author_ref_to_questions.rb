class AddAuthorRefToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_reference :questions, :author, foreign_key: { to_table: :users, on_delete: :nullify}
  end
end
