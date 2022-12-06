require "test_helper"

class BookinTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bookin_type = bookin_types(:one)
  end

  test "should get index" do
    get bookin_types_url
    assert_response :success
  end

  test "should get new" do
    get new_bookin_type_url
    assert_response :success
  end

  test "should create bookin_type" do
    assert_difference("BookinType.count") do
      post bookin_types_url, params: { bookin_type: { color: @bookin_type.color, duration: @bookin_type.duration, location: @bookin_type.location, name: @bookin_type.name, payment_required: @bookin_type.payment_required, price: @bookin_type.price, user_id: @bookin_type.user_id } }
    end

    assert_redirected_to bookin_type_url(BookinType.last)
  end

  test "should show bookin_type" do
    get bookin_type_url(@bookin_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_bookin_type_url(@bookin_type)
    assert_response :success
  end

  test "should update bookin_type" do
    patch bookin_type_url(@bookin_type), params: { bookin_type: { color: @bookin_type.color, duration: @bookin_type.duration, location: @bookin_type.location, name: @bookin_type.name, payment_required: @bookin_type.payment_required, price: @bookin_type.price, user_id: @bookin_type.user_id } }
    assert_redirected_to bookin_type_url(@bookin_type)
  end

  test "should destroy bookin_type" do
    assert_difference("BookinType.count", -1) do
      delete bookin_type_url(@bookin_type)
    end

    assert_redirected_to bookin_types_url
  end
end
