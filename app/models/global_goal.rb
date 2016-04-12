class GlobalGoal < ActiveRecord::Base
  mount_uploader	:image_link,	PictureUploader

  def resize_created_image
    self.all.each do |goal|
      goal.image_link.recreate_versions!
    end
  end
end
