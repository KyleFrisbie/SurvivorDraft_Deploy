require 'test_helper'

class DraftersControllerTest < ActionController::TestCase
  setup do
    @drafter = drafters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drafters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drafter" do
    assert_difference('Drafter.count') do
      post :create, drafter: { losses: @drafter.losses, user_id: @drafter.user_id, wins: @drafter.wins }
    end

    assert_redirected_to drafter_path(assigns(:drafter))
  end

  test "should show drafter" do
    get :show, id: @drafter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drafter
    assert_response :success
  end

  test "should update drafter" do
    patch :update, id: @drafter, drafter: { losses: @drafter.losses, user_id: @drafter.user_id, wins: @drafter.wins }
    assert_redirected_to drafter_path(assigns(:drafter))
  end

  test "should destroy drafter" do
    assert_difference('Drafter.count', -1) do
      delete :destroy, id: @drafter
    end

    assert_redirected_to drafters_path
  end
end
