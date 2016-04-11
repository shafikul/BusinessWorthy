json.array!(@global_goals) do |global_goal|
  json.extract! global_goal, :id, :name, :org_name, :org_title, :what_is_doing, :why_doing, :impact, :image_link, :impact_criteria
  json.url global_goal_url(global_goal, format: :json)
end
