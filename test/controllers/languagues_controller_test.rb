require 'test_helper'

class LanguaguesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @languague = languagues(:one)
  end

  test "should get index" do
    get languagues_url
    assert_response :success
  end

  test "should get new" do
    get new_languague_url
    assert_response :success
  end

  test "should create languague" do
    assert_difference('Languague.count') do
      post languagues_url, params: { languague: { name: @languague.name, readabilty: @languague.readabilty, variance: @languague.variance } }
    end

    assert_redirected_to languague_url(Languague.last)
  end

  test "should show languague" do
    get languague_url(@languague)
    assert_response :success
  end

  test "should get edit" do
    get edit_languague_url(@languague)
    assert_response :success
  end

  test "should update languague" do
    patch languague_url(@languague), params: { languague: { name: @languague.name, readabilty: @languague.readabilty, variance: @languague.variance } }
    assert_redirected_to languague_url(@languague)
  end

  test "should destroy languague" do
    assert_difference('Languague.count', -1) do
      delete languague_url(@languague)
    end

    assert_redirected_to languagues_url
  end
end
