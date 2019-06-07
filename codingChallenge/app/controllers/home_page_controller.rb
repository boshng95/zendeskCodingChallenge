#Controller for home page to view all the tickets
class HomePageController < ApplicationController

    #Controller for home page to view all the tickets
    def index

        #Tickets object created in tickets class (app/models/tickets.rb)
        tickets = Tickets.new

        @title='Zendesk Internship Coding Challenge';
        @subtitle='Mobile Ticket Viewer';

        #Assign to data to populate home page with all the ticket information
        @data = tickets.information;
    end

end
