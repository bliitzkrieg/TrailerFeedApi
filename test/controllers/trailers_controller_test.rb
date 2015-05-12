require 'test_helper'

class TrailersControllerTest < ActionController::TestCase
  setup do
    @trailer = trailers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trailers)
  end

  test "should create trailer" do
    assert_difference('Trailer.count') do
      post :create, trailer: { length: @trailer.length, title: @trailer.title, url: @trailer.url }
    end

    assert_response 201
  end

  test "should show trailer" do
    get :show, id: @trailer
    assert_response :success
  end

  test "should update trailer" do
    put :update, id: @trailer, trailer: { length: @trailer.length, title: @trailer.title, url: @trailer.url }
    assert_response 204
  end

  test "should destroy trailer" do
    assert_difference('Trailer.count', -1) do
      delete :destroy, id: @trailer
    end

    assert_response 204
  end
end
