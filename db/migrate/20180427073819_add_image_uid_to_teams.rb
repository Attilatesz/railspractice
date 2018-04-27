class AddImageUidToTeams < ActiveRecord::Migration[5.1]
  def change
    add_column :teams, :image_uid, :string
  end
end
