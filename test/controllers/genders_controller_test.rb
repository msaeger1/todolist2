require 'test_helper'

class GendersControllerTest < ActionController::TestCase
  setup do
    @gender = genders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:genders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gender" do
    assert_difference('Gender.count') do
      post :create, gender: { birth_year: @gender.birth_year, first_name: @gender.first_name, last_name: @gender.last_name, user: @gender.user }
    end

    assert_redirected_to gender_path(assigns(:gender))
  end

  test "should show gender" do
    get :show, id: @gender
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gender
    assert_response :success
  end

  test "should update gender" do
    patch :update, id: @gender, gender: { birth_year: @gender.birth_year, first_name: @gender.first_name, last_name: @gender.last_name, user: @gender.user }
    assert_redirected_to gender_path(assigns(:gender))
  end

  test "should destroy gender" do
    assert_difference('Gender.count', -1) do
      delete :destroy, id: @gender
    end

    assert_redirected_to genders_path
  end
end
