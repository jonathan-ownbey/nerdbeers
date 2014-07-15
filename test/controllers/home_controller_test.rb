require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    
    #assert_template :index
    assert_template "home/index"
    assert_template layout: "layouts/application"
  end

end
