require 'test_helper'

class TgifsControllerTest < ActionController::TestCase
  setup do
    @tgif = tgifs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tgifs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tgif" do
    assert_difference('Tgif.count') do
      post :create, tgif: { email: @tgif.email, name: @tgif.name }
    end

    assert_redirected_to tgif_path(assigns(:tgif))
  end

  test "should show tgif" do
    get :show, id: @tgif
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tgif
    assert_response :success
  end

  test "should update tgif" do
    patch :update, id: @tgif, tgif: { email: @tgif.email, name: @tgif.name }
    assert_redirected_to tgif_path(assigns(:tgif))
  end

  test "should destroy tgif" do
    assert_difference('Tgif.count', -1) do
      delete :destroy, id: @tgif
    end

    assert_redirected_to tgifs_path
  end
end
