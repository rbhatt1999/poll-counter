require "test_helper"

class TwopollsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @twopoll = twopolls(:one)
  end

  test "should get index" do
    get twopolls_url, as: :json
    assert_response :success
  end

  test "should create twopoll" do
    assert_difference("Twopoll.count") do
      post twopolls_url, params: { twopoll: { answer: @twopoll.answer, email: @twopoll.email } }, as: :json
    end

    assert_response :created
  end

  test "should show twopoll" do
    get twopoll_url(@twopoll), as: :json
    assert_response :success
  end

  test "should update twopoll" do
    patch twopoll_url(@twopoll), params: { twopoll: { answer: @twopoll.answer, email: @twopoll.email } }, as: :json
    assert_response :success
  end

  test "should destroy twopoll" do
    assert_difference("Twopoll.count", -1) do
      delete twopoll_url(@twopoll), as: :json
    end

    assert_response :no_content
  end
end
