require 'test_helper'

class UrlencurtadasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @urlencurtada = urlencurtadas(:one)
  end

  test "should get index" do
    get urlencurtadas_url
    assert_response :success
  end

  test "should get new" do
    get new_urlencurtada_url
    assert_response :success
  end

  test "should create urlencurtada" do
    assert_difference('Urlencurtada.count') do
      post urlencurtadas_url, params: { urlencurtada: { url: @urlencurtada.url, urlencurtada: @urlencurtada.urlencurtada } }
    end

    assert_redirected_to urlencurtada_url(Urlencurtada.last)
  end

  test "should show urlencurtada" do
    get urlencurtada_url(@urlencurtada)
    assert_response :success
  end

  test "should get edit" do
    get edit_urlencurtada_url(@urlencurtada)
    assert_response :success
  end

  test "should update urlencurtada" do
    patch urlencurtada_url(@urlencurtada), params: { urlencurtada: { url: @urlencurtada.url, urlencurtada: @urlencurtada.urlencurtada } }
    assert_redirected_to urlencurtada_url(@urlencurtada)
  end

  test "should destroy urlencurtada" do
    assert_difference('Urlencurtada.count', -1) do
      delete urlencurtada_url(@urlencurtada)
    end

    assert_redirected_to urlencurtadas_url
  end
end
