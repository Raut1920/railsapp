require 'test_helper'

class HorticulturesControllerTest < ActionController::TestCase
  setup do
    @horticulture = horticultures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:horticultures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create horticulture" do
    assert_difference('Horticulture.count') do
      post :create, horticulture: { climate: @horticulture.climate, description: @horticulture.description, diseases: @horticulture.diseases, fertilizer: @horticulture.fertilizer, name: @horticulture.name, season: @horticulture.season, seedrate: @horticulture.seedrate, soil: @horticulture.soil, varieties: @horticulture.varieties }
    end

    assert_redirected_to horticulture_path(assigns(:horticulture))
  end

  test "should show horticulture" do
    get :show, id: @horticulture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @horticulture
    assert_response :success
  end

  test "should update horticulture" do
    patch :update, id: @horticulture, horticulture: { climate: @horticulture.climate, description: @horticulture.description, diseases: @horticulture.diseases, fertilizer: @horticulture.fertilizer, name: @horticulture.name, season: @horticulture.season, seedrate: @horticulture.seedrate, soil: @horticulture.soil, varieties: @horticulture.varieties }
    assert_redirected_to horticulture_path(assigns(:horticulture))
  end

  test "should destroy horticulture" do
    assert_difference('Horticulture.count', -1) do
      delete :destroy, id: @horticulture
    end

    assert_redirected_to horticultures_path
  end
end
