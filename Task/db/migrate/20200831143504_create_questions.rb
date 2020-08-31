class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
	  t.string :question
	  t.text :description
	  t.references :user
      t.timestamps
    end
  end
end
