require './test/test_helper'

class HomePageControllerTest < ActionDispatch::IntegrationTest

  testTickets = Tickets.new
  controller = HomePageController.new

  #To test whether the JSON API receive fully in terms of size
  test "testTicketSize" do 
    assert_equal(100, testTickets.information.size)
  end

  #To test the whether the home page route access succesfully
  test "testRoutes" do 
    assert_routing '/', controller: "home_page", action: "index"

    get "/?page=2"
    assert_response :success
  end

end
