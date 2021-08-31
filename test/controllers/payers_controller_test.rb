require "test_helper"

class PayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payer = payers(:one)
  end

  test "should get index" do
    get payers_url, as: :json
    assert_response :success
  end

  test "should create payer" do
    assert_difference('Payer.count') do
      post payers_url, params: { payer: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show payer" do
    get payer_url(@payer), as: :json
    assert_response :success
  end

  test "should update payer" do
    patch payer_url(@payer), params: { payer: {  } }, as: :json
    assert_response 200
  end

  test "should destroy payer" do
    assert_difference('Payer.count', -1) do
      delete payer_url(@payer), as: :json
    end

    assert_response 204
  end
end
