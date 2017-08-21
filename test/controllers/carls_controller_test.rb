require 'test_helper'

class CarlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carl = carls(:one)
  end

  test "should get index" do
    get carls_url
    assert_response :success
  end

  test "should get new" do
    get new_carl_url
    assert_response :success
  end

  test "should create carl" do
    assert_difference('Carl.count') do
      post carls_url, params: { carl: { cantidad: @carl.cantidad, peso: @carl.peso, precio: @carl.precio, tamaño: @carl.tamaño } }
    end

    assert_redirected_to carl_url(Carl.last)
  end

  test "should show carl" do
    get carl_url(@carl)
    assert_response :success
  end

  test "should get edit" do
    get edit_carl_url(@carl)
    assert_response :success
  end

  test "should update carl" do
    patch carl_url(@carl), params: { carl: { cantidad: @carl.cantidad, peso: @carl.peso, precio: @carl.precio, tamaño: @carl.tamaño } }
    assert_redirected_to carl_url(@carl)
  end

  test "should destroy carl" do
    assert_difference('Carl.count', -1) do
      delete carl_url(@carl)
    end

    assert_redirected_to carls_url
  end
end
