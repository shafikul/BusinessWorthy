class WelcomeController < ApplicationController
  def home
    @global_goal = GlobalGoal.all
  end

  def our_mission
  end

  def contact_us
  end

  def commit

  end
end
