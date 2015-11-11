require 'test_helper'

class Admin::WorkStatusesControllerTest < ActionController::TestCase
  setup do
    @work_status = work_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:work_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create work_status" do
    assert_difference('WorkStatus.count') do
      post :create, work_status: {  }
    end

    assert_redirected_to admin_work_status_path(assigns(:work_status))
  end

  test "should show work_status" do
    get :show, id: @work_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @work_status
    assert_response :success
  end

  test "should update work_status" do
    patch :update, id: @work_status, work_status: {  }
    assert_redirected_to admin_work_status_path(assigns(:work_status))
  end

  test "should destroy work_status" do
    assert_difference('WorkStatus.count', -1) do
      delete :destroy, id: @work_status
    end

    assert_redirected_to admin_work_statuses_path
  end
end
