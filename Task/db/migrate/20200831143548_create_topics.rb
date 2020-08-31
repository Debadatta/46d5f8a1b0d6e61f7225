class CreateTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :topics do |t|
	  t.string :topic
	  t.text :description
	  t.references :user
      t.timestamps
    end
  end
end