require './test/test_helper'

class SearchSpecificControllerTest < ActionDispatch::IntegrationTest

  testTickets = Tickets.new

  #To test whether the API called return the correct specific ticket information by passing ticket ID
  test "correctTicketID" do 
    assert_equal(202, testTickets.specificTicket("202")["id"])
    assert_not_equal(203, testTickets.specificTicket("202")["id"])
  end

  #To test incase failure of calling JSON API due to invalid input
  test "incorrectTicketID" do 
    assert_nil(testTickets.specificTicket("")["id"])
    assert_equal("InvalidEndpoint", testTickets.specificTicket("")["error"])
    assert_equal("RecordNotFound", testTickets.specificTicket("0")["error"])
  end

  #To test the whether the searcg page route access succesfully
  test "testRoutes" do 
    assert_generates "/specific", :controller => "search_specific", :action => "search"

    get "/?ticketID=202"
    assert_response :success 
  end

end
