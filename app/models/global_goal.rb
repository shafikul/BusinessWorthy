class GlobalGoal < ActiveRecord::Base
  GOAL_CRITERIA = [[ "Select a criteria", 0 ], [ "No Poverty", 1 ],["Zero Hunger", 2], ["Good Health and Well-being", 3],
                   ["Quality Education", 4],["Gender Equality", 5],["Clean water and sanitation", 6], ["Affordable and clean energy", 7],
                   ["Decent work and economic growth", 8], ["Indutry Innovation and Infrastructure", 9],
                   ["Reduced Inequalities", 10], ["Sustainable cities and communities", 11], ["Responsible consumption and production", 12],
                   ["Climate Action", 13], ["Life below water", 14], ["Life on Land", 15], ["Peace and justice strong institutions", 16],
                   ["Patnerships for the goal", 17]]
  GOAL_CRITERIA_IMAGE_ASSETS = [[]]

  mount_uploader	:image_link,	PictureUploader

  def resize_created_image
    self.all.each do |goal|
      goal.image_link.recreate_versions!
    end
  end
end
