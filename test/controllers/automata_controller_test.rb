require 'test_helper'

class AutomataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @automatum = automata(:one)
  end

  test "should get index" do
    get automata_url
    assert_response :success
  end

  test "should get new" do
    get new_automatum_url
    assert_response :success
  end

  test "should create automatum" do
    assert_difference('Automatum.count') do
      post automata_url, params: { automatum: { function: @automatum.function, title: @automatum.title, working: @automatum.working } }
    end

    assert_redirected_to automatum_url(Automatum.last)
  end

  test "should show automatum" do
    get automatum_url(@automatum)
    assert_response :success
  end

  test "should get edit" do
    get edit_automatum_url(@automatum)
    assert_response :success
  end

  test "should update automatum" do
    patch automatum_url(@automatum), params: { automatum: { function: @automatum.function, title: @automatum.title, working: @automatum.working } }
    assert_redirected_to automatum_url(@automatum)
  end

  test "should destroy automatum" do
    assert_difference('Automatum.count', -1) do
      delete automatum_url(@automatum)
    end

    assert_redirected_to automata_url
  end
end
