require 'test_helper'

class AppleModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apple_model = apple_models(:one)
  end

  test "should get index" do
    get apple_models_url
    assert_response :success
  end

  test "should get new" do
    get new_apple_model_url
    assert_response :success
  end

  test "should create apple_model" do
    assert_difference('AppleModel.count') do
      post apple_models_url, params: { apple_model: {  } }
    end

    assert_redirected_to apple_model_url(AppleModel.last)
  end

  test "should show apple_model" do
    get apple_model_url(@apple_model)
    assert_response :success
  end

  test "should get edit" do
    get edit_apple_model_url(@apple_model)
    assert_response :success
  end

  test "should update apple_model" do
    patch apple_model_url(@apple_model), params: { apple_model: {  } }
    assert_redirected_to apple_model_url(@apple_model)
  end

  test "should destroy apple_model" do
    assert_difference('AppleModel.count', -1) do
      delete apple_model_url(@apple_model)
    end

    assert_redirected_to apple_models_url
  end
end
