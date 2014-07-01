require 'test_helper'

module Twilio
  class ClicktocallControllerTest < ActionController::TestCase
    test "should get index" do
      get :index
      assert_response :success
    end

    test "should get process_call" do
      get :process_call
      assert_response :success
    end

    test "should get initiate_conference" do
      get :initiate_conference
      assert_response :success
    end

  end
end
