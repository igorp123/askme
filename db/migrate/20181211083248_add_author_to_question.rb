class AddAuthorToQuestion < ActiveRecord::Migration[5.2]
  def change
    add_reference :questions, :author, foreign_key: true, column: :user_id
  end
end
