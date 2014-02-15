require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest

  test "That the login route opens the login page" do
    get '/login'
    assert_response :successful
  end

  test "That the logout route opens the login page" do
    get '/logout'
    assert_response :redirect
    assert_redirected_to '/'
  end

end
