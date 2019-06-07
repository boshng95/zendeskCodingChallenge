#Controller for search page to search for specific ticket
class SearchSpecificController < ApplicationController

    #Controller for search page to search for specific ticket
    def search

        #Tickets object created in tickets class (app/models/tickets.rb)
        tickets = Tickets.new
        
        @title='Zendesk Internship Coding Challenge';
        @subtitle='Search Specific Mobile Ticket Viewer';
        @ticketID = ""

        #Ticket information populate from Tickets object by passing GET request parameters
        #The GET parameters will pass into Tickets & return will specific ticket information
        @ticketInformation = tickets.specificTicket(params[:ticketID].to_s);
    end

end
