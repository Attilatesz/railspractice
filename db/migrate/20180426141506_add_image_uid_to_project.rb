class AddImageUidToProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :image_uid, :string
  end
end
