class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.text :body, null: false
      t.belongs_to :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
