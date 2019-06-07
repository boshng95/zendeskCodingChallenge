#Tickets object
class Tickets

   #Tickets object consists of one full information in JSON format / Ruby Hash
   attr_accessor :information
   
   #Initializing the Tickets object by calling Zendesk API which return all ticktes information
   def initialize

      begin
         url = URI("https://boshng.zendesk.com/api/v2/tickets.json")

         uri = URI(url)

         request = Net::HTTP::Get.new(uri.path, {'Content-Type' => 'application/json'})

         #Authentication Credential save in application.yml (Using figaro)
         request.basic_auth(ENV["zendesk_email"] , ENV["zendesk_password"])
         http = Net::HTTP.new(uri.host, uri.port)
         http.use_ssl = (url.scheme == "https")

         response = http.request(request)
         rescue SocketError => e
         p e.class
      end

      parsed_json = JSON.parse(response.body)

      #populate information variable with all JSON Ticket information
      @information = parsed_json["tickets"]

   end

   #Function to retrieve specific ticket information by passing GET request parameter into
   #function parameter to return specific information
   def specificTicket(ticketID)
      begin
         url = URI("https://boshng.zendesk.com/api/v2/tickets/"+
         ticketID+
         ".json")

         uri = URI(url)

         request = Net::HTTP::Get.new(uri.path, {'Content-Type' => 'application/json'})
         
         #Authentication Credential save in application.yml (Using figaro)
         request.basic_auth(ENV["zendesk_email"] , ENV["zendesk_password"])
         http = Net::HTTP.new(uri.host, uri.port)
         http.use_ssl = (url.scheme == "https")

         response = http.request(request)
      rescue SocketError => e
         p e.class
      end

      parsed_json = JSON.parse(response.body)

      #if the Ticket is found by having correct ID will return ticket information
      if parsed_json["ticket"] != nil
         return parsed_json["ticket"]
      #else the api will return error message
      else
         return parsed_json
      end
   end

 end