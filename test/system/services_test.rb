require "application_system_test_case"

class ServicesTest < ApplicationSystemTestCase
  setup do
    @service = services(:one)
  end

  test "visiting the index" do
    visit services_url
    assert_selector "h1", text: "Services"
  end

  test "should create service" do
    visit services_url
    click_on "New service"

    check "Domestic violence" if @service.domestic_violence
    check "Expenses" if @service.expenses
    check "Families" if @service.families
    check "Food" if @service.food
    check "Immediate housing" if @service.immediate_housing
    check "Immigration" if @service.immigration
    check "Long term housing" if @service.long_term_housing
    check "Mental health" if @service.mental_health
    fill_in "Organization", with: @service.organization_id
    fill_in "Other", with: @service.other
    check "Prisoner" if @service.prisoner
    check "Substance use" if @service.substance_use
    check "Us military" if @service.us_military
    click_on "Create Service"

    assert_text "Service was successfully created"
    click_on "Back"
  end

  test "should update Service" do
    visit service_url(@service)
    click_on "Edit this service", match: :first

    check "Domestic violence" if @service.domestic_violence
    check "Expenses" if @service.expenses
    check "Families" if @service.families
    check "Food" if @service.food
    check "Immediate housing" if @service.immediate_housing
    check "Immigration" if @service.immigration
    check "Long term housing" if @service.long_term_housing
    check "Mental health" if @service.mental_health
    fill_in "Organization", with: @service.organization_id
    fill_in "Other", with: @service.other
    check "Prisoner" if @service.prisoner
    check "Substance use" if @service.substance_use
    check "Us military" if @service.us_military
    click_on "Update Service"

    assert_text "Service was successfully updated"
    click_on "Back"
  end

  test "should destroy Service" do
    visit service_url(@service)
    click_on "Destroy this service", match: :first

    assert_text "Service was successfully destroyed"
  end
end
