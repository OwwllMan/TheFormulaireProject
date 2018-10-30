require 'test_helper'

class StatiqueControllerTest < ActionDispatch::IntegrationTest
  test "should get accueil" do
    get statique_accueil_url
    assert_response :success
  end

end
