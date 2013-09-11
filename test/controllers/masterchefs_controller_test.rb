require 'test_helper'

class MasterchefsControllerTest < ActionController::TestCase
  setup do
    @masterchef = masterchefs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:masterchefs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create masterchef" do
    assert_difference('Masterchef.count') do
      post :create, masterchef: { votefor: @masterchef.votefor, voter: @masterchef.voter }
    end

    assert_redirected_to masterchef_path(assigns(:masterchef))
  end

  test "should show masterchef" do
    get :show, id: @masterchef
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @masterchef
    assert_response :success
  end

  test "should update masterchef" do
    patch :update, id: @masterchef, masterchef: { votefor: @masterchef.votefor, voter: @masterchef.voter }
    assert_redirected_to masterchef_path(assigns(:masterchef))
  end

  test "should destroy masterchef" do
    assert_difference('Masterchef.count', -1) do
      delete :destroy, id: @masterchef
    end

    assert_redirected_to masterchefs_path
  end
end
