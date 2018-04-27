class AddImageNameToTeams < ActiveRecord::Migration[5.1]
  def change
    add_column :teams, :image_name, :string
  end
end
