class CreateJoinTableTeamProject < ActiveRecord::Migration[5.1]
  def change
    create_join_table :teams, :projects do |t|
      t.index [:team_id, :project_id]
      t.index [:project_id, :team_id]
    end
  end
end
