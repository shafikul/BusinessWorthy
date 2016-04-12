class CreateGlobalGoals < ActiveRecord::Migration
  def change
    create_table :global_goals do |t|
      t.string :name
      t.string :org_name
      t.string :org_title
      t.text :what_is_doing
      t.text :why_doing
      t.text :impact
      t.string :image_link
      t.integer :impact_criteria

      t.timestamps null: false
    end
  end
end
