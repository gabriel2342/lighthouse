require "test_helper"

class ServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service = services(:one)
  end

  test "should get index" do
    get services_url
    assert_response :success
  end

  test "should get new" do
    get new_service_url
    assert_response :success
  end

  test "should create service" do
    assert_difference("Service.count") do
      post services_url, params: { service: { domestic_violence: @service.domestic_violence, expenses: @service.expenses, families: @service.families, food: @service.food, immediate_housing: @service.immediate_housing, immigration: @service.immigration, long_term_housing: @service.long_term_housing, mental_health: @service.mental_health, organization_id: @service.organization_id, other: @service.other, prisoner: @service.prisoner, substance_use: @service.substance_use, us_military: @service.us_military } }
    end

    assert_redirected_to service_url(Service.last)
  end

  test "should show service" do
    get service_url(@service)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_url(@service)
    assert_response :success
  end

  test "should update service" do
    patch service_url(@service), params: { service: { domestic_violence: @service.domestic_violence, expenses: @service.expenses, families: @service.families, food: @service.food, immediate_housing: @service.immediate_housing, immigration: @service.immigration, long_term_housing: @service.long_term_housing, mental_health: @service.mental_health, organization_id: @service.organization_id, other: @service.other, prisoner: @service.prisoner, substance_use: @service.substance_use, us_military: @service.us_military } }
    assert_redirected_to service_url(@service)
  end

  test "should destroy service" do
    assert_difference("Service.count", -1) do
      delete service_url(@service)
    end

    assert_redirected_to services_url
  end
end
