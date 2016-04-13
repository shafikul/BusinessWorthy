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

  def submit
    permitted_params = welcome_commit_params(params)
    subscriber = Subscribe.find_by_email(permitted_params[:email])
    if subscriber.present?
      flash[:notice] = "This email already in commit list"
    else
      subscriber = Subscribe.create(permitted_params)
      if subscriber.save
        flash[:success] = "Welcome to Business Worthy!"
      else
        flash[:alert] = "Can not subscribe!!"
      end
    end
    redirect_to commit_path
  end

  private

  def welcome_commit_params(params)
    params.permit(:name, :email, :company, :country,:turnover,:no_employees)
  end

end
