require 'test_helper'

class AgriculturesControllerTest < ActionController::TestCase
  setup do
    @agriculture = agricultures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agricultures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agriculture" do
    assert_difference('Agriculture.count') do
      post :create, agriculture: { climate: @agriculture.climate, description: @agriculture.description, diseases: @agriculture.diseases, fertilizer: @agriculture.fertilizer, name: @agriculture.name, season: @agriculture.season, seedrate: @agriculture.seedrate, soil: @agriculture.soil, varieties: @agriculture.varieties }
    end

    assert_redirected_to agriculture_path(assigns(:agriculture))
  end

  test "should show agriculture" do
    get :show, id: @agriculture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agriculture
    assert_response :success
  end

  test "should update agriculture" do
    patch :update, id: @agriculture, agriculture: { climate: @agriculture.climate, description: @agriculture.description, diseases: @agriculture.diseases, fertilizer: @agriculture.fertilizer, name: @agriculture.name, season: @agriculture.season, seedrate: @agriculture.seedrate, soil: @agriculture.soil, varieties: @agriculture.varieties }
    assert_redirected_to agriculture_path(assigns(:agriculture))
  end

  test "should destroy agriculture" do
    assert_difference('Agriculture.count', -1) do
      delete :destroy, id: @agriculture
    end

    assert_redirected_to agricultures_path
  end
end
