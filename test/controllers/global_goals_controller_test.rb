require 'test_helper'

class GlobalGoalsControllerTest < ActionController::TestCase
  setup do
    @global_goal = global_goals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:global_goals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create global_goal" do
    assert_difference('GlobalGoal.count') do
      post :create, global_goal: { image_link: @global_goal.image_link, impact: @global_goal.impact, impact_criteria: @global_goal.impact_criteria, name: @global_goal.name, org_name: @global_goal.org_name, org_title: @global_goal.org_title, what_is_doing: @global_goal.what_is_doing, why_doing: @global_goal.why_doing }
    end

    assert_redirected_to global_goal_path(assigns(:global_goal))
  end

  test "should show global_goal" do
    get :show, id: @global_goal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @global_goal
    assert_response :success
  end

  test "should update global_goal" do
    patch :update, id: @global_goal, global_goal: { image_link: @global_goal.image_link, impact: @global_goal.impact, impact_criteria: @global_goal.impact_criteria, name: @global_goal.name, org_name: @global_goal.org_name, org_title: @global_goal.org_title, what_is_doing: @global_goal.what_is_doing, why_doing: @global_goal.why_doing }
    assert_redirected_to global_goal_path(assigns(:global_goal))
  end

  test "should destroy global_goal" do
    assert_difference('GlobalGoal.count', -1) do
      delete :destroy, id: @global_goal
    end

    assert_redirected_to global_goals_path
  end
end
