class CreateApprentices < ActiveRecord::Migration[5.1]
  def change
    create_table :apprentices do |t|
      t.string :name
      t.string :github

      t.timestamps
    end
  end
end
