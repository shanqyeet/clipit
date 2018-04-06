require 'test_helper'

class CallToActionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @call_to_action = call_to_actions(:one)
  end

  test "should get index" do
    get call_to_actions_url
    assert_response :success
  end

  test "should get new" do
    get new_call_to_action_url
    assert_response :success
  end

  test "should create call_to_action" do
    assert_difference('CallToAction.count') do
      post call_to_actions_url, params: { call_to_action: {  } }
    end

    assert_redirected_to call_to_action_url(CallToAction.last)
  end

  test "should show call_to_action" do
    get call_to_action_url(@call_to_action)
    assert_response :success
  end

  test "should get edit" do
    get edit_call_to_action_url(@call_to_action)
    assert_response :success
  end

  test "should update call_to_action" do
    patch call_to_action_url(@call_to_action), params: { call_to_action: {  } }
    assert_redirected_to call_to_action_url(@call_to_action)
  end

  test "should destroy call_to_action" do
    assert_difference('CallToAction.count', -1) do
      delete call_to_action_url(@call_to_action)
    end

    assert_redirected_to call_to_actions_url
  end
end
